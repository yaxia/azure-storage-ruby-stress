#
# Auto-generated by Thrift Compiler (0.9.2)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require "thrift"
require_relative "cloud_file_client_types"

module Azure::Storage::Stress
  module AutoGenerated
    module CloudFileClientService
      class Client
        include ::Thrift::Client

        def listShares(accountInfo, prefix, detailsIncluded, fileRequestOptions, operationContext)
          send_listShares(accountInfo, prefix, detailsIncluded, fileRequestOptions, operationContext)
          return recv_listShares()
        end

        def send_listShares(accountInfo, prefix, detailsIncluded, fileRequestOptions, operationContext)
          send_message("listShares", ListShares_args, accountInfo: accountInfo, prefix: prefix, detailsIncluded: detailsIncluded, fileRequestOptions: fileRequestOptions, operationContext: operationContext)
        end

        def recv_listShares()
          result = receive_message(ListShares_result)
          return result.success unless result.success.nil?
          raise result.wse unless result.wse.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, "listShares failed: unknown result")
        end

        def listSharesSegmented(accountInfo, prefix, detailsIncluded, maxResults, continuationToken, fileRequestOptions, operationContext)
          send_listSharesSegmented(accountInfo, prefix, detailsIncluded, maxResults, continuationToken, fileRequestOptions, operationContext)
          return recv_listSharesSegmented()
        end

        def send_listSharesSegmented(accountInfo, prefix, detailsIncluded, maxResults, continuationToken, fileRequestOptions, operationContext)
          send_message("listSharesSegmented", ListSharesSegmented_args, accountInfo: accountInfo, prefix: prefix, detailsIncluded: detailsIncluded, maxResults: maxResults, continuationToken: continuationToken, fileRequestOptions: fileRequestOptions, operationContext: operationContext)
        end

        def recv_listSharesSegmented()
          result = receive_message(ListSharesSegmented_result)
          return result.success unless result.success.nil?
          raise result.wse unless result.wse.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, "listSharesSegmented failed: unknown result")
        end

        def setProperties(thriftRequestOptions, accountInfo, thriftOperationContext, properties)
          send_setProperties(thriftRequestOptions, accountInfo, thriftOperationContext, properties)
          recv_setProperties()
        end

        def send_setProperties(thriftRequestOptions, accountInfo, thriftOperationContext, properties)
          send_message("setProperties", SetProperties_args, thriftRequestOptions: thriftRequestOptions, accountInfo: accountInfo, thriftOperationContext: thriftOperationContext, properties: properties)
        end

        def recv_setProperties()
          result = receive_message(SetProperties_result)
          raise result.storageException unless result.storageException.nil?
          return
        end

        def getProperties(thriftRequestOptions, accountInfo, thriftOperationContext)
          send_getProperties(thriftRequestOptions, accountInfo, thriftOperationContext)
          return recv_getProperties()
        end

        def send_getProperties(thriftRequestOptions, accountInfo, thriftOperationContext)
          send_message("getProperties", GetProperties_args, thriftRequestOptions: thriftRequestOptions, accountInfo: accountInfo, thriftOperationContext: thriftOperationContext)
        end

        def recv_getProperties()
          result = receive_message(GetProperties_result)
          return result.success unless result.success.nil?
          raise result.storageException unless result.storageException.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, "getProperties failed: unknown result")
        end
      end

      class Processor
        include ::Thrift::Processor

        def process_listShares(seqid, iprot, oprot)
          args = read_args(iprot, ListShares_args)
          result = ListShares_result.new()
          begin
            result.success = @handler.listShares(args.accountInfo, args.prefix, args.detailsIncluded, args.fileRequestOptions, args.operationContext)
          rescue ::XSS::AutoGenerated::WrappedStorageException => wse
            result.wse = wse
          end
          write_result(result, oprot, "listShares", seqid)
        end

        def process_listSharesSegmented(seqid, iprot, oprot)
          args = read_args(iprot, ListSharesSegmented_args)
          result = ListSharesSegmented_result.new()
          begin
            result.success = @handler.listSharesSegmented(args.accountInfo, args.prefix, args.detailsIncluded, args.maxResults, args.continuationToken, args.fileRequestOptions, args.operationContext)
          rescue ::XSS::AutoGenerated::WrappedStorageException => wse
            result.wse = wse
          end
          write_result(result, oprot, "listSharesSegmented", seqid)
        end

        def process_setProperties(seqid, iprot, oprot)
          args = read_args(iprot, SetProperties_args)
          result = SetProperties_result.new()
          begin
            @handler.setProperties(args.thriftRequestOptions, args.accountInfo, args.thriftOperationContext, args.properties)
          rescue ::XSS::AutoGenerated::WrappedStorageException => storageException
            result.storageException = storageException
          end
          write_result(result, oprot, "setProperties", seqid)
        end

        def process_getProperties(seqid, iprot, oprot)
          args = read_args(iprot, GetProperties_args)
          result = GetProperties_result.new()
          begin
            result.success = @handler.getProperties(args.thriftRequestOptions, args.accountInfo, args.thriftOperationContext)
          rescue ::XSS::AutoGenerated::WrappedStorageException => storageException
            result.storageException = storageException
          end
          write_result(result, oprot, "getProperties", seqid)
        end
      end

      # HELPER FUNCTIONS AND STRUCTURES

      class ListShares_args
        include ::Thrift::Struct, ::Thrift::Struct_Union
        ACCOUNTINFO = 1
        PREFIX = 2
        DETAILSINCLUDED = 3
        FILEREQUESTOPTIONS = 4
        OPERATIONCONTEXT = 5

        FIELDS = {
          ACCOUNTINFO => { type: ::Thrift::Types::STRUCT, name: "accountInfo", class: ::XSS::AutoGenerated::StorageAccountInfo },
          PREFIX => { type: ::Thrift::Types::STRING, name: "prefix" },
          DETAILSINCLUDED => { type: ::Thrift::Types::I32, name: "detailsIncluded", enum_class: ::XSS::AutoGenerated::ThriftShareListingDetails },
          FILEREQUESTOPTIONS => { type: ::Thrift::Types::STRUCT, name: "fileRequestOptions", class: ::XSS::AutoGenerated::ThriftFileRequestOptions },
          OPERATIONCONTEXT => { type: ::Thrift::Types::STRUCT, name: "operationContext", class: ::XSS::AutoGenerated::OperationContext }
        }

        def struct_fields; FIELDS; end

        def validate
          unless @detailsIncluded.nil? || ::XSS::AutoGenerated::ThriftShareListingDetails::VALID_VALUES.include?(@detailsIncluded)
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Invalid value of field detailsIncluded!")
          end
        end

        ::Thrift::Struct.generate_accessors self
      end

      class ListShares_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0
        WSE = 1

        FIELDS = {
          SUCCESS => { type: ::Thrift::Types::STRUCT, name: "success", class: ::XSS::AutoGenerated::ListFileShareResponse },
          WSE => { type: ::Thrift::Types::STRUCT, name: "wse", class: ::XSS::AutoGenerated::WrappedStorageException }
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class ListSharesSegmented_args
        include ::Thrift::Struct, ::Thrift::Struct_Union
        ACCOUNTINFO = 1
        PREFIX = 2
        DETAILSINCLUDED = 3
        MAXRESULTS = 4
        CONTINUATIONTOKEN = 5
        FILEREQUESTOPTIONS = 6
        OPERATIONCONTEXT = 7

        FIELDS = {
          ACCOUNTINFO => { type: ::Thrift::Types::STRUCT, name: "accountInfo", class: ::XSS::AutoGenerated::StorageAccountInfo },
          PREFIX => { type: ::Thrift::Types::STRING, name: "prefix" },
          DETAILSINCLUDED => { type: ::Thrift::Types::I32, name: "detailsIncluded", enum_class: ::XSS::AutoGenerated::ThriftShareListingDetails },
          MAXRESULTS => { type: ::Thrift::Types::I32, name: "maxResults" },
          CONTINUATIONTOKEN => { type: ::Thrift::Types::STRUCT, name: "continuationToken", class: ::XSS::AutoGenerated::ThriftFileContinuationToken },
          FILEREQUESTOPTIONS => { type: ::Thrift::Types::STRUCT, name: "fileRequestOptions", class: ::XSS::AutoGenerated::ThriftFileRequestOptions },
          OPERATIONCONTEXT => { type: ::Thrift::Types::STRUCT, name: "operationContext", class: ::XSS::AutoGenerated::OperationContext }
        }

        def struct_fields; FIELDS; end

        def validate
          unless @detailsIncluded.nil? || ::XSS::AutoGenerated::ThriftShareListingDetails::VALID_VALUES.include?(@detailsIncluded)
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Invalid value of field detailsIncluded!")
          end
        end

        ::Thrift::Struct.generate_accessors self
      end

      class ListSharesSegmented_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0
        WSE = 1

        FIELDS = {
          SUCCESS => { type: ::Thrift::Types::STRUCT, name: "success", class: ::XSS::AutoGenerated::ListFileShareResponse },
          WSE => { type: ::Thrift::Types::STRUCT, name: "wse", class: ::XSS::AutoGenerated::WrappedStorageException }
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class SetProperties_args
        include ::Thrift::Struct, ::Thrift::Struct_Union
        THRIFTREQUESTOPTIONS = 1
        ACCOUNTINFO = 2
        THRIFTOPERATIONCONTEXT = 3
        PROPERTIES = 4

        FIELDS = {
          THRIFTREQUESTOPTIONS => { type: ::Thrift::Types::STRUCT, name: "thriftRequestOptions", class: ::XSS::AutoGenerated::ThriftFileRequestOptions },
          ACCOUNTINFO => { type: ::Thrift::Types::STRUCT, name: "accountInfo", class: ::XSS::AutoGenerated::StorageAccountInfo },
          THRIFTOPERATIONCONTEXT => { type: ::Thrift::Types::STRUCT, name: "thriftOperationContext", class: ::XSS::AutoGenerated::OperationContext },
          PROPERTIES => { type: ::Thrift::Types::STRUCT, name: "properties", class: ::XSS::AutoGenerated::ThriftStorageServiceProperties }
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class SetProperties_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        STORAGEEXCEPTION = 1

        FIELDS = {
          STORAGEEXCEPTION => { type: ::Thrift::Types::STRUCT, name: "storageException", class: ::XSS::AutoGenerated::WrappedStorageException }
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class GetProperties_args
        include ::Thrift::Struct, ::Thrift::Struct_Union
        THRIFTREQUESTOPTIONS = 1
        ACCOUNTINFO = 2
        THRIFTOPERATIONCONTEXT = 3

        FIELDS = {
          THRIFTREQUESTOPTIONS => { type: ::Thrift::Types::STRUCT, name: "thriftRequestOptions", class: ::XSS::AutoGenerated::ThriftFileRequestOptions },
          ACCOUNTINFO => { type: ::Thrift::Types::STRUCT, name: "accountInfo", class: ::XSS::AutoGenerated::StorageAccountInfo },
          THRIFTOPERATIONCONTEXT => { type: ::Thrift::Types::STRUCT, name: "thriftOperationContext", class: ::XSS::AutoGenerated::OperationContext }
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class GetProperties_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0
        STORAGEEXCEPTION = 1

        FIELDS = {
          SUCCESS => { type: ::Thrift::Types::STRUCT, name: "success", class: ::XSS::AutoGenerated::ThriftStorageServiceProperties },
          STORAGEEXCEPTION => { type: ::Thrift::Types::STRUCT, name: "storageException", class: ::XSS::AutoGenerated::WrappedStorageException }
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end
    end
  end
end
