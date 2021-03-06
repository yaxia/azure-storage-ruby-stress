#
# Auto-generated by Thrift Compiler (0.9.2)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require "thrift"
require_relative "cloud_table_types"

module Azure::Storage::Stress
  module AutoGenerated
    module CloudTableClientService
      class Client
        include ::Thrift::Client

        def getServiceStats(requestInfo, accountInfo)
          send_getServiceStats(requestInfo, accountInfo)
          return recv_getServiceStats()
        end

        def send_getServiceStats(requestInfo, accountInfo)
          send_message("getServiceStats", GetServiceStats_args, requestInfo: requestInfo, accountInfo: accountInfo)
        end

        def recv_getServiceStats()
          result = receive_message(GetServiceStats_result)
          return result.success unless result.success.nil?
          raise result.wse unless result.wse.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, "getServiceStats failed: unknown result")
        end

        def getServiceProperties(requestInfo, accountInfo)
          send_getServiceProperties(requestInfo, accountInfo)
          return recv_getServiceProperties()
        end

        def send_getServiceProperties(requestInfo, accountInfo)
          send_message("getServiceProperties", GetServiceProperties_args, requestInfo: requestInfo, accountInfo: accountInfo)
        end

        def recv_getServiceProperties()
          result = receive_message(GetServiceProperties_result)
          return result.success unless result.success.nil?
          raise result.wse unless result.wse.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, "getServiceProperties failed: unknown result")
        end

        def setServiceProperties(serviceProperties, requestInfo, accountInfo)
          send_setServiceProperties(serviceProperties, requestInfo, accountInfo)
          recv_setServiceProperties()
        end

        def send_setServiceProperties(serviceProperties, requestInfo, accountInfo)
          send_message("setServiceProperties", SetServiceProperties_args, serviceProperties: serviceProperties, requestInfo: requestInfo, accountInfo: accountInfo)
        end

        def recv_setServiceProperties()
          result = receive_message(SetServiceProperties_result)
          raise result.wse unless result.wse.nil?
          return
        end

        def listTables(prefix, requestInfo, accountInfo)
          send_listTables(prefix, requestInfo, accountInfo)
          return recv_listTables()
        end

        def send_listTables(prefix, requestInfo, accountInfo)
          send_message("listTables", ListTables_args, prefix: prefix, requestInfo: requestInfo, accountInfo: accountInfo)
        end

        def recv_listTables()
          result = receive_message(ListTables_result)
          return result.success unless result.success.nil?
          raise result.wse unless result.wse.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, "listTables failed: unknown result")
        end

        def ListTableSegmented(prefix, maxResults, continuationToken, requestInfo, accountInfo)
          send_ListTableSegmented(prefix, maxResults, continuationToken, requestInfo, accountInfo)
          return recv_ListTableSegmented()
        end

        def send_ListTableSegmented(prefix, maxResults, continuationToken, requestInfo, accountInfo)
          send_message("ListTableSegmented", ListTableSegmented_args, prefix: prefix, maxResults: maxResults, continuationToken: continuationToken, requestInfo: requestInfo, accountInfo: accountInfo)
        end

        def recv_ListTableSegmented()
          result = receive_message(ListTableSegmented_result)
          return result.success unless result.success.nil?
          raise result.wse unless result.wse.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, "ListTableSegmented failed: unknown result")
        end
      end

      class Processor
        include ::Thrift::Processor

        def process_getServiceStats(seqid, iprot, oprot)
          args = read_args(iprot, GetServiceStats_args)
          result = GetServiceStats_result.new()
          begin
            result.success = @handler.getServiceStats(args.requestInfo, args.accountInfo)
          rescue ::XSS::AutoGenerated::WrappedStorageException => wse
            result.wse = wse
          end
          write_result(result, oprot, "getServiceStats", seqid)
        end

        def process_getServiceProperties(seqid, iprot, oprot)
          args = read_args(iprot, GetServiceProperties_args)
          result = GetServiceProperties_result.new()
          begin
            result.success = @handler.getServiceProperties(args.requestInfo, args.accountInfo)
          rescue ::XSS::AutoGenerated::WrappedStorageException => wse
            result.wse = wse
          end
          write_result(result, oprot, "getServiceProperties", seqid)
        end

        def process_setServiceProperties(seqid, iprot, oprot)
          args = read_args(iprot, SetServiceProperties_args)
          result = SetServiceProperties_result.new()
          begin
            @handler.setServiceProperties(args.serviceProperties, args.requestInfo, args.accountInfo)
          rescue ::XSS::AutoGenerated::WrappedStorageException => wse
            result.wse = wse
          end
          write_result(result, oprot, "setServiceProperties", seqid)
        end

        def process_listTables(seqid, iprot, oprot)
          args = read_args(iprot, ListTables_args)
          result = ListTables_result.new()
          begin
            result.success = @handler.listTables(args.prefix, args.requestInfo, args.accountInfo)
          rescue ::XSS::AutoGenerated::WrappedStorageException => wse
            result.wse = wse
          end
          write_result(result, oprot, "listTables", seqid)
        end

        def process_ListTableSegmented(seqid, iprot, oprot)
          args = read_args(iprot, ListTableSegmented_args)
          result = ListTableSegmented_result.new()
          begin
            result.success = @handler.ListTableSegmented(args.prefix, args.maxResults, args.continuationToken, args.requestInfo, args.accountInfo)
          rescue ::XSS::AutoGenerated::WrappedStorageException => wse
            result.wse = wse
          end
          write_result(result, oprot, "ListTableSegmented", seqid)
        end
      end

      # HELPER FUNCTIONS AND STRUCTURES

      class GetServiceStats_args
        include ::Thrift::Struct, ::Thrift::Struct_Union
        REQUESTINFO = 1
        ACCOUNTINFO = 2

        FIELDS = {
          REQUESTINFO => { type: ::Thrift::Types::STRUCT, name: "requestInfo", class: ::XSS::AutoGenerated::TableRequestInfo },
          ACCOUNTINFO => { type: ::Thrift::Types::STRUCT, name: "accountInfo", class: ::XSS::AutoGenerated::StorageAccountInfo }
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class GetServiceStats_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0
        WSE = 1

        FIELDS = {
          SUCCESS => { type: ::Thrift::Types::STRUCT, name: "success", class: ::XSS::AutoGenerated::ThriftServiceStats },
          WSE => { type: ::Thrift::Types::STRUCT, name: "wse", class: ::XSS::AutoGenerated::WrappedStorageException }
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class GetServiceProperties_args
        include ::Thrift::Struct, ::Thrift::Struct_Union
        REQUESTINFO = 1
        ACCOUNTINFO = 2

        FIELDS = {
          REQUESTINFO => { type: ::Thrift::Types::STRUCT, name: "requestInfo", class: ::XSS::AutoGenerated::TableRequestInfo },
          ACCOUNTINFO => { type: ::Thrift::Types::STRUCT, name: "accountInfo", class: ::XSS::AutoGenerated::StorageAccountInfo }
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class GetServiceProperties_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0
        WSE = 1

        FIELDS = {
          SUCCESS => { type: ::Thrift::Types::STRUCT, name: "success", class: ::XSS::AutoGenerated::ThriftStorageServiceProperties },
          WSE => { type: ::Thrift::Types::STRUCT, name: "wse", class: ::XSS::AutoGenerated::WrappedStorageException }
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class SetServiceProperties_args
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SERVICEPROPERTIES = 1
        REQUESTINFO = 2
        ACCOUNTINFO = 3

        FIELDS = {
          SERVICEPROPERTIES => { type: ::Thrift::Types::STRUCT, name: "serviceProperties", class: ::XSS::AutoGenerated::ThriftStorageServiceProperties },
          REQUESTINFO => { type: ::Thrift::Types::STRUCT, name: "requestInfo", class: ::XSS::AutoGenerated::TableRequestInfo },
          ACCOUNTINFO => { type: ::Thrift::Types::STRUCT, name: "accountInfo", class: ::XSS::AutoGenerated::StorageAccountInfo }
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class SetServiceProperties_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        WSE = 1

        FIELDS = {
          WSE => { type: ::Thrift::Types::STRUCT, name: "wse", class: ::XSS::AutoGenerated::WrappedStorageException }
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class ListTables_args
        include ::Thrift::Struct, ::Thrift::Struct_Union
        PREFIX = 1
        REQUESTINFO = 2
        ACCOUNTINFO = 3

        FIELDS = {
          PREFIX => { type: ::Thrift::Types::STRING, name: "prefix" },
          REQUESTINFO => { type: ::Thrift::Types::STRUCT, name: "requestInfo", class: ::XSS::AutoGenerated::TableRequestInfo },
          ACCOUNTINFO => { type: ::Thrift::Types::STRUCT, name: "accountInfo", class: ::XSS::AutoGenerated::StorageAccountInfo }
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class ListTables_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0
        WSE = 1

        FIELDS = {
          SUCCESS => { type: ::Thrift::Types::LIST, name: "success", element: { type: ::Thrift::Types::STRUCT, class: ::XSS::AutoGenerated::ListTableItem } },
          WSE => { type: ::Thrift::Types::STRUCT, name: "wse", class: ::XSS::AutoGenerated::WrappedStorageException }
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class ListTableSegmented_args
        include ::Thrift::Struct, ::Thrift::Struct_Union
        PREFIX = 1
        MAXRESULTS = 2
        CONTINUATIONTOKEN = 3
        REQUESTINFO = 4
        ACCOUNTINFO = 5

        FIELDS = {
          PREFIX => { type: ::Thrift::Types::STRING, name: "prefix" },
          MAXRESULTS => { type: ::Thrift::Types::I32, name: "maxResults" },
          CONTINUATIONTOKEN => { type: ::Thrift::Types::STRUCT, name: "continuationToken", class: ::XSS::AutoGenerated::ThriftTableContinuationToken },
          REQUESTINFO => { type: ::Thrift::Types::STRUCT, name: "requestInfo", class: ::XSS::AutoGenerated::TableRequestInfo },
          ACCOUNTINFO => { type: ::Thrift::Types::STRUCT, name: "accountInfo", class: ::XSS::AutoGenerated::StorageAccountInfo }
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class ListTableSegmented_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0
        WSE = 1

        FIELDS = {
          SUCCESS => { type: ::Thrift::Types::STRUCT, name: "success", class: ::XSS::AutoGenerated::ListTableResultSegmented },
          WSE => { type: ::Thrift::Types::STRUCT, name: "wse", class: ::XSS::AutoGenerated::WrappedStorageException }
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end
    end
  end
end
