require_relative "base_handler"
require_relative "cloud_blob_base_handler"
require_relative "../utils"
require_relative "../auto_generated/cloud_blob_service"
require_relative "../converter/core_converter"
require_relative "../converter/blob_converter"
require_relative "../infrastructure/logging_aspect"

module Azure
  module Storage
    module Handler
      class CloudBlobHandler < CloudBlobBaseHandler
        def deleteBlob(requestInfo, accountInfo, deleteIfExists, isPermanentDelete, deleteSnapshotsOption)
          # ==== Build Client ==== #
          internalRequestInfo = XS::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          blobName = requestInfo.blobName
          containerName = requestInfo.containerName
          options = XS::Converter::CoreConverter::getCommonRequestOptions(requestInfo.thriftRequestOptions, requestInfo.thriftOperationContext)
          options.merge! XS::Converter::CoreConverter::getAccessConditionOptions(requestInfo.thriftAccessCondition)
          options[:snapshot] = requestInfo.snapshotTime unless requestInfo.snapshotTime.nil?
          options[:delete_snapshots] = deleteSnapshotsOption
          # ==== Operation ==== #
          blobClient.delete_blob(containerName, blobName, options)
          # ==== Construct Return Value ==== #
          result = XS::AutoGenerated::CloudBlobResponse.new
        end



        def exists(requestInfo, accountInfo)
          # ==== Build Client ==== #
          internalRequestInfo = Azure::Storage::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          # ==== Operation ==== #
          # ==== Construct Return Value ==== #
        end


        def setMetadata(requestInfo, accountInfo, metadata)
          # ==== Build Client ==== #
          internalRequestInfo = Azure::Storage::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          # ==== Operation ==== #
          # ==== Construct Return Value ==== #
        end



        def setProperties(requestInfo, accountInfo, properties)
          # ==== Build Client ==== #
          internalRequestInfo = Azure::Storage::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          # ==== Operation ==== #
          # ==== Construct Return Value ==== #
        end



        def fetchAttributes(requestInfo, accountInfo)
          # ==== Build Client ==== #
          internalRequestInfo = Azure::Storage::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          # ==== Operation ==== #
          # ==== Construct Return Value ==== #
        end



        def downloadToStream(requestInfo, accountInfo)
          # ==== Build Client ==== #
          internalRequestInfo = Azure::Storage::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          # ==== Operation ==== #
          # ==== Construct Return Value ==== #
        end



        def downloadRangeToStream(requestInfo, accountInfo, offset, length)
          # ==== Build Client ==== #
          internalRequestInfo = Azure::Storage::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          # ==== Operation ==== #
          # ==== Construct Return Value ==== #
        end


        def downloadToByteArray(requestInfo, accountInfo, targetSize, index)
          # ==== Build Client ==== #
          internalRequestInfo = Azure::Storage::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          # ==== Operation ==== #
          # ==== Construct Return Value ==== #
        end



        def downloadRangeToByteArray(requestInfo, accountInfo, targetSize, index, offset, length)
          # ==== Build Client ==== #
          internalRequestInfo = Azure::Storage::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          # ==== Operation ==== #
          # ==== Construct Return Value ==== #
        end



        def uploadFromByteArray(requestInfo, accountInfo, buffer, index, count)
          # ==== Build Client ==== #
          internalRequestInfo = Azure::Storage::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          # ==== Operation ==== #
          # ==== Construct Return Value ==== #
        end



        def downloadToFile(requestInfo, accountInfo, path, fileMode)
          # ==== Build Client ==== #
          internalRequestInfo = Azure::Storage::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          # ==== Operation ==== #
          # ==== Construct Return Value ==== #
        end



        def acquireLease(requestInfo, accountInfo, leaseTime, proposedLeaseId)
          # ==== Build Client ==== #
          internalRequestInfo = Azure::Storage::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          # ==== Operation ==== #
          # ==== Construct Return Value ==== #
        end



        def breakLease(requestInfo, accountInfo, breakPeriod)
          # ==== Build Client ==== #
          internalRequestInfo = Azure::Storage::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          # ==== Operation ==== #
          # ==== Construct Return Value ==== #
        end



        def changeLease(requestInfo, accountInfo, proposedLeaseId)
          # ==== Build Client ==== #
          internalRequestInfo = Azure::Storage::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          # ==== Operation ==== #
          # ==== Construct Return Value ==== #
        end



        def releaseLease(requestInfo, accountInfo)
          # ==== Build Client ==== #
          internalRequestInfo = Azure::Storage::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          # ==== Operation ==== #
          # ==== Construct Return Value ==== #
        end


        def renewLease(requestInfo, accountInfo)
          # ==== Build Client ==== #
          internalRequestInfo = Azure::Storage::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          # ==== Operation ==== #
          # ==== Construct Return Value ==== #
        end



        def startCopyFromBlob(requestInfo, accountInfo, uri)
          # ==== Build Client ==== #
          internalRequestInfo = Azure::Storage::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          # ==== Operation ==== #
          # ==== Construct Return Value ==== #
        end



        def abortCopy(requestInfo, accountInfo, copyId)
          # ==== Build Client ==== #
          internalRequestInfo = Azure::Storage::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          # ==== Operation ==== #
          # ==== Construct Return Value ==== #
        end



        def createSnapshot(requestInfo, accountInfo, metadata)
          # ==== Build Client ==== #
          internalRequestInfo = Azure::Storage::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          # ==== Operation ==== #
          # ==== Construct Return Value ==== #
        end



        def undelete(requestInfo, accountInfo)
          # ==== Build Client ==== #
          internalRequestInfo = Azure::Storage::Utilities::get_default_request_info
          blobClient = self.build_client(internalRequestInfo, accountInfo)
          # ==== Construct Parameters ==== #
          # ==== Operation ==== #
          # ==== Construct Return Value ==== #
        end
      end
    end
  end
end
