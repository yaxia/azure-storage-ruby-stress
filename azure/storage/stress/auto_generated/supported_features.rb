#
# Auto-generated by Thrift Compiler (0.9.2)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require "thrift"
require_relative "core_types"

module Azure::Storage::Stress
  module AutoGenerated
    module SupportedFeatures
      class Client
        include ::Thrift::Client

        def GetSupportedFeatures()
          send_GetSupportedFeatures()
          return recv_GetSupportedFeatures()
        end

        def send_GetSupportedFeatures()
          send_message("GetSupportedFeatures", GetSupportedFeatures_args)
        end

        def recv_GetSupportedFeatures()
          result = receive_message(GetSupportedFeatures_result)
          return result.success unless result.success.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, "GetSupportedFeatures failed: unknown result")
        end
      end

      class Processor
        include ::Thrift::Processor

        def process_GetSupportedFeatures(seqid, iprot, oprot)
          args = read_args(iprot, GetSupportedFeatures_args)
          result = GetSupportedFeatures_result.new()
          result.success = @handler.GetSupportedFeatures()
          write_result(result, oprot, "GetSupportedFeatures", seqid)
        end
      end

      # HELPER FUNCTIONS AND STRUCTURES

      class GetSupportedFeatures_args
        include ::Thrift::Struct, ::Thrift::Struct_Union

        FIELDS = {

        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class GetSupportedFeatures_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0

        FIELDS = {
          SUCCESS => { type: ::Thrift::Types::LIST, name: "success", element: { type: ::Thrift::Types::I32, enum_class: ::XSS::AutoGenerated::Features } }
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end
    end
  end
end
