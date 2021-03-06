#
# Auto-generated by Thrift Compiler (0.9.2)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require "thrift"
require_relative "core_types"
require_relative "file_types_types"


module Azure::Storage::Stress
  module AutoGenerated
    module ThriftDeleteShareSnapshotsOption
      None = 0
      IncludeSnapshots = 1
      VALUE_MAP = { 0 => "None", 1 => "IncludeSnapshots" }
      VALID_VALUES = Set.new([None, IncludeSnapshots]).freeze
    end

    class FileShareRequestInfo
      include ::Thrift::Struct, ::Thrift::Struct_Union
      SHARENAME = 1
      SNAPSHOTTIME = 2
      FILEREQUESTOPTIONS = 3
      THRIFTOPERATIONCONTEXT = 4
      ACCESSCONDITION = 5

      FIELDS = {
        SHARENAME => { type: ::Thrift::Types::STRING, name: "shareName" },
        SNAPSHOTTIME => { type: ::Thrift::Types::STRING, name: "snapshotTime", optional: true },
        FILEREQUESTOPTIONS => { type: ::Thrift::Types::STRUCT, name: "fileRequestOptions", class: ::XSS::AutoGenerated::ThriftFileRequestOptions, optional: true },
        THRIFTOPERATIONCONTEXT => { type: ::Thrift::Types::STRUCT, name: "thriftOperationContext", class: ::XSS::AutoGenerated::OperationContext, optional: true },
        ACCESSCONDITION => { type: ::Thrift::Types::STRUCT, name: "accessCondition", class: ::XSS::AutoGenerated::ThriftAccessCondition }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field shareName is unset!") unless @shareName
      end

      ::Thrift::Struct.generate_accessors self
    end

    class CloudFileShareResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      ETAG = 1
      LASTMODIFIED = 2
      SHAREQUOTA = 3
      METADATA = 4
      SNAPSHOTTIME = 5

      FIELDS = {
        ETAG => { type: ::Thrift::Types::STRING, name: "etag" },
        LASTMODIFIED => { type: ::Thrift::Types::I64, name: "lastModified" },
        SHAREQUOTA => { type: ::Thrift::Types::I32, name: "shareQuota", optional: true },
        METADATA => { type: ::Thrift::Types::MAP, name: "metadata", key: { type: ::Thrift::Types::STRING }, value: { type: ::Thrift::Types::STRING }, optional: true },
        SNAPSHOTTIME => { type: ::Thrift::Types::I64, name: "snapshotTime", optional: true }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field etag is unset!") unless @etag
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field lastModified is unset!") unless @lastModified
      end

      ::Thrift::Struct.generate_accessors self
    end

    class CreateFileShareResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      WASCREATED = 1
      CLOUDFILESHARERESPONSE = 2

      FIELDS = {
        WASCREATED => { type: ::Thrift::Types::BOOL, name: "wasCreated" },
        CLOUDFILESHARERESPONSE => { type: ::Thrift::Types::STRUCT, name: "cloudFileShareResponse", class: ::XSS::AutoGenerated::CloudFileShareResponse }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field wasCreated is unset!") if @wasCreated.nil?
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field cloudFileShareResponse is unset!") unless @cloudFileShareResponse
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ExistsFileShareResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      EXISTS = 1
      CLOUDFILESHARERESPONSE = 2

      FIELDS = {
        EXISTS => { type: ::Thrift::Types::BOOL, name: "exists" },
        CLOUDFILESHARERESPONSE => { type: ::Thrift::Types::STRUCT, name: "cloudFileShareResponse", class: ::XSS::AutoGenerated::CloudFileShareResponse, optional: true }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field exists is unset!") if @exists.nil?
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ShareResponseDetails
      include ::Thrift::Struct, ::Thrift::Struct_Union
      SHARERESPONSE = 1
      CLOUDSTORAGEURI = 2

      FIELDS = {
        SHARERESPONSE => { type: ::Thrift::Types::STRUCT, name: "shareResponse", class: ::XSS::AutoGenerated::CloudFileShareResponse },
        CLOUDSTORAGEURI => { type: ::Thrift::Types::STRUCT, name: "cloudStorageUri", class: ::XSS::AutoGenerated::CloudStorageUri }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field shareResponse is unset!") unless @shareResponse
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field cloudStorageUri is unset!") unless @cloudStorageUri
      end

      ::Thrift::Struct.generate_accessors self
    end
  end
end
