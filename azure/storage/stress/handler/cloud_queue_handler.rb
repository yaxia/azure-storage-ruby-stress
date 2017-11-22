require_relative "base_handler"
require_relative "../utils"
require_relative "../auto_generated/cloud_queue_service"
require_relative "../converter/core_converter"
require_relative "../converter/queue_converter"
require_relative "../infrastructure/logging_aspect"


module Azure
  module Storage
    module Handler
      class CloudQueueHandler < BaseHandler
        def create(requestInfo, accountInfo, createIfNotExists, metadata)
          queueClient = Azure::Storage::Converter::QueueConverter.getQueueService(self, accountInfo)
          # ==== Construct Parameters ==== #
          queueName = requestInfo.queueName
          reqOptions = Azure::Storage::Converter::CoreConverter.getCommonRequestOptions(requestInfo.thriftRequestOptions, requestInfo.thriftOperationContext)
          reqOptions[:metadata] = metadata unless metadata.nil?

          # ==== Operation ==== #
          if createIfNotExists
            queueList = queueClient.list_queues(prefix: queueName, max_results: 1)
            if queueList.empty?
              temp = queueClient.create_queue(queueName, reqOptions)
            else
              if queueList[0].name == queueName
                temp = nil
              else
                temp = queueClient.create_queue(queueName, reqOptions)
              end
            end
          else
            temp = queueClient.create_queue(queueName, reqOptions)
          end

          # ==== Construct Return Value ==== #
          result = Azure::Storage::AutoGenerated::CreateQueueResponse.new
          result.created = temp.nil?
          result.response = Azure::Storage::AutoGenerated::CloudQueueResponse.new # no place to find this
          result.response.name = queueName
          result.response.metadata = {}
          return result
        end

        def deleteQueue(requestInfo, accountInfo, deleteIfExists)
          queueClient = Azure::Storage::Converter::QueueConverter.getQueueService(self, accountInfo)
          # ==== Construct Parameters ==== #
          queueName = requestInfo.queueName
          reqOptions = Azure::Storage::Converter::CoreConverter.getCommonRequestOptions(requestInfo.thriftRequestOptions, requestInfo.thriftOperationContext)

          # ==== Operation ==== #
          if deleteIfExists
            queueList = queueClient.list_queues(prefix: queueName, max_results: 1)
            if queueList.empty?
              temp = queueClient.delete_queue(queueName, reqOptions)
            else
              if queueList[0].name == queueName
                temp = nil
              else
                temp = queueClient.delete_queue(queueName, reqOptions)
              end
            end
          else
            temp = queueClient.delete_queue(queueName, reqOptions)
          end

          # ==== Construct Return Value ==== #
          result = temp.nil?
          return result
        end

        def exists(requestInfo, accountInfo)
          queueClient = Azure::Storage::Converter::QueueConverter.getQueueService(self, accountInfo)
          # ==== Construct Parameters ==== #
          queueName = requestInfo.queueName
          reqOptions = Azure::Storage::Converter::CoreConverter.getCommonRequestOptions(requestInfo.thriftRequestOptions, requestInfo.thriftOperationContext)
          reqOptions[:prefix] = queueName
          reqOptions[:max_results] = 1

          # ==== Operation ==== #
          temp = queueClient.list_queues(reqOptions)

          # ==== Construct Return Value ==== #
          result = Azure::Storage::AutoGenerated::QueueExistsResponse.new
          result.exists = (temp[0].name == queueName)
          result.response = Azure::Storage::AutoGenerated::CloudQueueResponse.new # no place to find this
          result.response.name = queueName
          result.response.metadata = {}
          return result
        end

        def clearMessages(requestInfo, accountInfo)
          queueClient = Azure::Storage::Converter::QueueConverter.getQueueService(self, accountInfo)
          # ==== Construct Parameters ==== #
          queueName = requestInfo.queueName
          reqOptions = Azure::Storage::Converter::CoreConverter.getCommonRequestOptions(requestInfo.thriftRequestOptions, requestInfo.thriftOperationContext)

          # ==== Operation ==== #
          # retry?
          temp = queueClient.clear_messages(queueName, reqOptions)

          # ==== Construct Return Value ==== #
          return
        end

        def fetchAttributes(requestInfo, accountInfo)
          queueClient = Azure::Storage::Converter::QueueConverter.getQueueService(self, accountInfo)
          # ==== Construct Parameters ==== #
          queueName = requestInfo.queueName
          reqOptions = Azure::Storage::Converter::CoreConverter.getCommonRequestOptions(requestInfo.thriftRequestOptions, requestInfo.thriftOperationContext)

          # ==== Operation ==== #
          temp = queueClient.get_queue_metadata(queueName, reqOptions)

          # ==== Construct Return Value ==== #
          result = Azure::Storage::AutoGenerated::CloudQueueResponse.new
          result.name = queueName
          result.metadata = temp[1]
          result.ApproximateMessageCount = temp[0]
          result.storageUri = nil
          return result
        end

        def setMetadata(requestInfo, accountInfo, metadata)
          queueClient = Azure::Storage::Converter::QueueConverter.getQueueService(self, accountInfo)
          # ==== Construct Parameters ==== #
          queueName = requestInfo.queueName
          reqOptions = Azure::Storage::Converter::CoreConverter.getCommonRequestOptions(requestInfo.thriftRequestOptions, requestInfo.thriftOperationContext)

          # ==== Operation ==== #
          temp = queueClient.set_queue_metadata(queueName, metadata, reqOptions)

          # ==== Construct Return Value ==== #
          return
        end

        def addMessage(addMessagePayload, accountInfo)
          queueClient = Azure::Storage::Converter::QueueConverter.getQueueService(self, accountInfo)
          # ==== Construct Parameters ==== #
          requestInfo = addMessagePayload.requestInfo
          queueName = requestInfo.queueName
          reqOptions = Azure::Storage::Converter::CoreConverter.getCommonRequestOptions(requestInfo.thriftRequestOptions, requestInfo.thriftOperationContext)
          mseeageText = addMessagePayload.payload
          Azure::Storage::Infrastructure::LoggingAspect.logger.debug addMessagePayload.initialVisibilityDelay
          Azure::Storage::Infrastructure::LoggingAspect.logger.debug addMessagePayload.timeToLive
          reqOptions[:visibility_timeout] = Azure::Storage::Utilities::timeSpanToSecond(addMessagePayload.initialVisibilityDelay) unless addMessagePayload.initialVisibilityDelay < 0
          reqOptions[:message_ttl] = Azure::Storage::Utilities::timeSpanToSecond(addMessagePayload.timeToLive)  unless addMessagePayload.timeToLive < 0

          # ==== Operation ==== #
          temp = queueClient.create_message(queueName, mseeageText, reqOptions)

          # ==== Construct Return Value ==== #
          result = Azure::Storage::AutoGenerated::CreateMessageResponse.new
          unless temp.empty?
            result.messageId = temp[0].id
            result.popReceipt = temp[0].pop_receipt
            result.insertionTime = Azure::Storage::Utilities::timeStringToInteger(temp[0].insertion_time)
            result.expirationTime = Azure::Storage::Utilities::timeStringToInteger(temp[0].expiration_time)
            result.nextVisibleTime = Azure::Storage::Utilities::timeStringToInteger(temp[0].time_next_visible)
          end
          return result
        end

        def updateMessage(updateMessagePayload, accountInfo, visibilityTimeout, updateFields)
          queueClient = Azure::Storage::Converter::QueueConverter.getQueueService(self, accountInfo)
          # ==== Construct Parameters ==== #
          requestInfo = updateMessagePayload.requestInfo
          queueName = requestInfo.queueName
          reqOptions = Azure::Storage::Converter::CoreConverter.getCommonRequestOptions(requestInfo.thriftRequestOptions, requestInfo.thriftOperationContext)
          messageId = updateMessagePayload.messageId
          popReceipt = updateMessagePayload.popReceipt
          mseeageText = updateMessagePayload.content
          visibilityTimeout = visibilityTimeout

          # ==== Operation ==== #
          temp = queueClient.update_message(queueName, messageId, popReceipt, messageText, visibilityTimeout, reqOptions)

          # ==== Construct Return Value ==== #
          result = Azure::Storage::AutoGenerated::UpdateMessageResponse.new
          result.popReceipt = temp[0]
          result.nextVisibleTime = Azure::Storage::Utilities::timeStringToInteger(temp[1])
          return result
        end

        def getMessage(requestInfo, accountInfo, visibilityTimeout)
          queueClient = Azure::Storage::Converter::QueueConverter.getQueueService(self, accountInfo)
          # ==== Construct Parameters ==== #
          queueName = requestInfo.queueName
          visibilityTimeout = Azure::Storage::Utilities::timeSpanToSecond(visibilityTimeout < 0 ? 0 : visibilityTimeout)
          reqOptions = Azure::Storage::Converter::CoreConverter.getCommonRequestOptions(requestInfo.thriftRequestOptions, requestInfo.thriftOperationContext)

          # ==== Operation ==== #
          temp = queueClient.list_messages(queueName, nil, reqOptions)

          # ==== Construct Return Value ==== #
          result = Azure::Storage::Converter::QueueConverter.convertQueueMessageToThriftQueueMessage(temp[0])
          return result
        end

        def peekMessage(requestInfo, accountInfo)
          queueClient = Azure::Storage::Converter::QueueConverter.getQueueService(self, accountInfo)
          # ==== Construct Parameters ==== #
          queueName = requestInfo.queueName
          reqOptions = Azure::Storage::Converter::CoreConverter.getCommonRequestOptions(requestInfo.thriftRequestOptions, requestInfo.thriftOperationContext)

          # ==== Operation ==== #
          temp = queueClient.peek_messages(queueName, reqOptions)

          # ==== Construct Return Value ==== #
          result = QueueConverter.convertQueueMessageToThriftQueueMessage(temp[0])
          return result
        end
        def getMessages(requestInfo, accountInfo, visibilityTimeout, messageCount)
          queueClient = Azure::Storage::Converter::QueueConverter.getQueueService(self, accountInfo)
          # ==== Construct Parameters ==== #
          queueName = requestInfo.queueName
          visibilityTimeout = Azure::Storage::Utilities::timeSpanToSecond(visibilityTimeout)
          reqOptions = Azure::Storage::Converter::CoreConverter.getCommonRequestOptions(requestInfo.thriftRequestOptions, requestInfo.thriftOperationContext)
          reqOptions[:number_of_messages] = messageCount

          # ==== Operation ==== #
          temp = queueClient.list_messages(queueName, visibilityTimeout, reqOptions)

          # ==== Construct Return Value ==== #
          result = []
          temp.each do |message|
            entry = QueueConverter.convertQueueMessageToThriftQueueMessage(message)
            result.push(entry)
          end
          return result
        end

        def peekMessages(requestInfo, accountInfo, messageCount)
          queueClient = Azure::Storage::Converter::QueueConverter.getQueueService(self, accountInfo)
          # ==== Construct Parameters ==== #
          queueName = requestInfo.queueName
          reqOptions = Azure::Storage::Converter::CoreConverter.getCommonRequestOptions(requestInfo.thriftRequestOptions, requestInfo.thriftOperationContext)
          reqOptions[:number_of_messages] = messageCount

          # ==== Operation ==== #
          temp = queueClient.peek_messages(queueName, reqOptions)

          # ==== Construct Return Value ==== #
          result = []
          temp.each do |message|
            entry = QueueConverter.convertQueueMessageToThriftQueueMessage(message)
            result.push(entry)
          end
          return result
        end

        def deleteMessage(requestInfo, accountInfo, messageId, popReceipt)
          queueClient = Azure::Storage::Converter::QueueConverter.getQueueService(self, accountInfo)
          # ==== Construct Parameters ==== #
          queueName = requestInfo.queueName
          messageId = messageId
          popReceipt = popReceipt
          reqOptions = Azure::Storage::Converter::CoreConverter.getCommonRequestOptions(requestInfo.thriftRequestOptions, requestInfo.thriftOperationContext)

          # ==== Operation ==== #
          queueClient.delete_message(queueName, messageId, popReceipt, reqOptions)

          # ==== Construct Return Value ==== #
          return
        end

        def setPermissions(requestInfo, accountInfo, permissions)
          queueClient = Azure::Storage::Converter::QueueConverter.getQueueService(self, accountInfo)
          # ==== Construct Parameters ==== #
          queueName = requestInfo.queueName
          reqOptions = Azure::Storage::Converter::CoreConverter.getCommonRequestOptions(requestInfo.thriftRequestOptions, requestInfo.thriftOperationContext)
          signedIdentifiers = []
          permissions.each do |permission|
            signedIdentifier = Azure::Storage::Service::SignedIdentifier.new
            signedIdentifier.access_policy.expiry = Azure::Storage::Utilities::timeStampToTime(permissions[permission].expiryTime)
            signedIdentifier.access_policy.permission = permissions[permission].permissions
            signedIdentifier.access_policy.start = Azure::Storage::Utilities::timeStampToTime(permissions[permission].startTime)
            signedIdentifier.id = permission
            signedIdentifiers.push(signedIdentifier)
          end
          reqOptions[:signed_identifiers] = signedIdentifiers

          # ==== Operation ==== #
          queueClient.set_queue_acl(queueName, reqOptions)

          # ==== Construct Return Value ==== #
          return
        end

        def getPermissions(requestInfo, accountInfo)
          queueClient = Azure::Storage::Converter::QueueConverter.getQueueService(self, accountInfo)
          # ==== Construct Parameters ==== #
          queueName = requestInfo.queueName
          reqOptions = Azure::Storage::Converter::CoreConverter.getCommonRequestOptions(requestInfo.thriftRequestOptions, requestInfo.thriftOperationContext)

          # ==== Operation ==== #
          temp = queueClient.get_queue_acl(queueName, reqOptions)

          # ==== Construct Return Value ==== #
          result = {}
          temp.each do |signedIdentifier|
            key = signedIdentifier.id
            policy = signedIdentifier.access_policy
            value = Azure::Storage::AutoGenerated::ThriftSharedAccessQueuePolicy.new
            value.permissions = policy.permission
            value.expiryTime = Azure::Storage::Utilities::timeStringToInteger(policy.expiry)
            value.startTime = Azure::Storage::Utilities::timeStringToInteger(policy.start)
            result[key] = value
          end
          return result
        end
      end
    end
  end
end