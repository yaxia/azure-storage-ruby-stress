#
# Auto-generated by Thrift Compiler (0.9.2)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require "thrift"
require_relative "core_types"
require_relative "queue_types_types"


module Azure::Storage::Stress
  module AutoGenerated
    class QueueRequestInfo
      include ::Thrift::Struct, ::Thrift::Struct_Union
      QUEUENAME = 1
      THRIFTREQUESTOPTIONS = 2
      THRIFTOPERATIONCONTEXT = 3

      FIELDS = {
        QUEUENAME => { type: ::Thrift::Types::STRING, name: "queueName" },
        THRIFTREQUESTOPTIONS => { type: ::Thrift::Types::STRUCT, name: "thriftRequestOptions", class: ::XSS::AutoGenerated::ThriftQueueRequestOptions, optional: true },
        THRIFTOPERATIONCONTEXT => { type: ::Thrift::Types::STRUCT, name: "thriftOperationContext", class: ::XSS::AutoGenerated::OperationContext, optional: true }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field queueName is unset!") unless @queueName
      end

      ::Thrift::Struct.generate_accessors self
    end

    class AddMessagePayload
      include ::Thrift::Struct, ::Thrift::Struct_Union
      REQUESTINFO = 1
      PAYLOAD = 2
      TIMETOLIVE = 3
      INITIALVISIBILITYDELAY = 4

      FIELDS = {
        REQUESTINFO => { type: ::Thrift::Types::STRUCT, name: "requestInfo", class: ::XSS::AutoGenerated::QueueRequestInfo },
        PAYLOAD => { type: ::Thrift::Types::STRING, name: "payload", binary: true },
        TIMETOLIVE => { type: ::Thrift::Types::I64, name: "timeToLive", optional: true },
        INITIALVISIBILITYDELAY => { type: ::Thrift::Types::I64, name: "initialVisibilityDelay", optional: true }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field requestInfo is unset!") unless @requestInfo
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field payload is unset!") unless @payload
      end

      ::Thrift::Struct.generate_accessors self
    end

    class UpdateMessagePayload
      include ::Thrift::Struct, ::Thrift::Struct_Union
      REQUESTINFO = 1
      MESSAGEID = 2
      POPRECEIPT = 3
      CONTENT = 4

      FIELDS = {
        REQUESTINFO => { type: ::Thrift::Types::STRUCT, name: "requestInfo", class: ::XSS::AutoGenerated::QueueRequestInfo },
        MESSAGEID => { type: ::Thrift::Types::STRING, name: "messageId" },
        POPRECEIPT => { type: ::Thrift::Types::STRING, name: "popReceipt" },
        CONTENT => { type: ::Thrift::Types::STRING, name: "content", binary: true, optional: true }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field requestInfo is unset!") unless @requestInfo
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field messageId is unset!") unless @messageId
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field popReceipt is unset!") unless @popReceipt
      end

      ::Thrift::Struct.generate_accessors self
    end

    class QueueExistsResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      EXISTS = 1
      RESPONSE = 2

      FIELDS = {
        EXISTS => { type: ::Thrift::Types::BOOL, name: "exists" },
        RESPONSE => { type: ::Thrift::Types::STRUCT, name: "response", class: ::XSS::AutoGenerated::CloudQueueResponse, optional: true }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field exists is unset!") if @exists.nil?
      end

      ::Thrift::Struct.generate_accessors self
    end
  end
end
