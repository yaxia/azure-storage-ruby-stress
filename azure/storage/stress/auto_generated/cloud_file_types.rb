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
    class CloudFileResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      ETAG = 1
      LASTMODIFIED = 2
      LENGTH = 3
      CONTENTMD5 = 4
      CONTENTLANGUAGE = 5
      CONTENTDISPOSITION = 6
      CONTENTENCODING = 7
      CONTENTTYPE = 8
      CACHECONTROL = 9
      METADATA = 10
      COPYSTATE = 11

      FIELDS = {
        ETAG => { type: ::Thrift::Types::STRING, name: "etag" },
        LASTMODIFIED => { type: ::Thrift::Types::I64, name: "lastModified" },
        LENGTH => { type: ::Thrift::Types::I64, name: "length", optional: true },
        CONTENTMD5 => { type: ::Thrift::Types::STRING, name: "contentMd5", optional: true },
        CONTENTLANGUAGE => { type: ::Thrift::Types::STRING, name: "contentLanguage", optional: true },
        CONTENTDISPOSITION => { type: ::Thrift::Types::STRING, name: "contentDisposition", optional: true },
        CONTENTENCODING => { type: ::Thrift::Types::STRING, name: "contentEncoding", optional: true },
        CONTENTTYPE => { type: ::Thrift::Types::STRING, name: "contentType", optional: true },
        CACHECONTROL => { type: ::Thrift::Types::STRING, name: "cacheControl", optional: true },
        METADATA => { type: ::Thrift::Types::MAP, name: "metadata", key: { type: ::Thrift::Types::STRING }, value: { type: ::Thrift::Types::STRING }, optional: true },
        COPYSTATE => { type: ::Thrift::Types::STRUCT, name: "copyState", class: ::XSS::AutoGenerated::ThriftCopyState, optional: true }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field etag is unset!") unless @etag
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field lastModified is unset!") unless @lastModified
      end

      ::Thrift::Struct.generate_accessors self
    end

    class CopyFileRequestInfo
      include ::Thrift::Struct, ::Thrift::Struct_Union
      FILEPATH = 1
      THRIFTREQUESTOPTIONS = 2
      SOURCETHRIFTACCESSCONDITION = 3
      DESTTHRIFTACCESSCONDITION = 4
      THRIFTOPERATIONCONTEXT = 5

      FIELDS = {
        FILEPATH => { type: ::Thrift::Types::STRUCT, name: "filePath", class: ::XSS::AutoGenerated::FilePathInfo },
        THRIFTREQUESTOPTIONS => { type: ::Thrift::Types::STRUCT, name: "thriftRequestOptions", class: ::XSS::AutoGenerated::ThriftFileRequestOptions, optional: true },
        SOURCETHRIFTACCESSCONDITION => { type: ::Thrift::Types::STRUCT, name: "sourceThriftAccessCondition", class: ::XSS::AutoGenerated::ThriftAccessCondition, optional: true },
        DESTTHRIFTACCESSCONDITION => { type: ::Thrift::Types::STRUCT, name: "destThriftAccessCondition", class: ::XSS::AutoGenerated::ThriftAccessCondition, optional: true },
        THRIFTOPERATIONCONTEXT => { type: ::Thrift::Types::STRUCT, name: "thriftOperationContext", class: ::XSS::AutoGenerated::OperationContext, optional: true }
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ThriftCloudFileProperties
      include ::Thrift::Struct, ::Thrift::Struct_Union
      CACHECONTROL = 1
      CONTENTDISPOSITION = 2
      CONTENTENCODING = 3
      CONTENTLANGUAGE = 4
      CONTENTMD5 = 5
      CONTENTTYPE = 6
      METADATA = 7

      FIELDS = {
        CACHECONTROL => { type: ::Thrift::Types::STRING, name: "cacheControl", optional: true },
        CONTENTDISPOSITION => { type: ::Thrift::Types::STRING, name: "contentDisposition", optional: true },
        CONTENTENCODING => { type: ::Thrift::Types::STRING, name: "contentEncoding", optional: true },
        CONTENTLANGUAGE => { type: ::Thrift::Types::STRING, name: "contentLanguage", optional: true },
        CONTENTMD5 => { type: ::Thrift::Types::STRING, name: "contentMd5", optional: true },
        CONTENTTYPE => { type: ::Thrift::Types::STRING, name: "contentType", optional: true },
        METADATA => { type: ::Thrift::Types::MAP, name: "metadata", key: { type: ::Thrift::Types::STRING }, value: { type: ::Thrift::Types::STRING }, optional: true }
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class DeleteFileResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      WASDELETED = 1
      CLOUDFILERESPONSE = 2

      FIELDS = {
        WASDELETED => { type: ::Thrift::Types::BOOL, name: "wasDeleted" },
        CLOUDFILERESPONSE => { type: ::Thrift::Types::STRUCT, name: "cloudFileResponse", class: ::XSS::AutoGenerated::CloudFileResponse }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field wasDeleted is unset!") if @wasDeleted.nil?
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field cloudFileResponse is unset!") unless @cloudFileResponse
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ExistsFileResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      EXISTS = 1
      CLOUDFILERESPONSE = 2

      FIELDS = {
        EXISTS => { type: ::Thrift::Types::BOOL, name: "exists" },
        CLOUDFILERESPONSE => { type: ::Thrift::Types::STRUCT, name: "cloudFileResponse", class: ::XSS::AutoGenerated::CloudFileResponse, optional: true }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field exists is unset!") if @exists.nil?
      end

      ::Thrift::Struct.generate_accessors self
    end

    class FileStartCopyResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      COPYID = 1
      CLOUDFILERESPONSE = 2

      FIELDS = {
        COPYID => { type: ::Thrift::Types::STRING, name: "copyID" },
        CLOUDFILERESPONSE => { type: ::Thrift::Types::STRUCT, name: "cloudFileResponse", class: ::XSS::AutoGenerated::CloudFileResponse }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field copyID is unset!") unless @copyID
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field cloudFileResponse is unset!") unless @cloudFileResponse
      end

      ::Thrift::Struct.generate_accessors self
    end

    # Represents a range in a file.
    class ThriftFileRange
      include ::Thrift::Struct, ::Thrift::Struct_Union
      STARTOFFSET = 1
      ENDOFFSET = 2

      FIELDS = {
        STARTOFFSET => { type: ::Thrift::Types::I64, name: "startOffset" },
        ENDOFFSET => { type: ::Thrift::Types::I64, name: "endOffset" }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field startOffset is unset!") unless @startOffset
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field endOffset is unset!") unless @endOffset
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ListRangesResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      RANGES = 1
      CLOUDFILERESPONSE = 2

      FIELDS = {
        RANGES => { type: ::Thrift::Types::LIST, name: "ranges", element: { type: ::Thrift::Types::STRUCT, class: ::XSS::AutoGenerated::ThriftFileRange } },
        CLOUDFILERESPONSE => { type: ::Thrift::Types::STRUCT, name: "cloudFileResponse", class: ::XSS::AutoGenerated::CloudFileResponse }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field ranges is unset!") unless @ranges
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field cloudFileResponse is unset!") unless @cloudFileResponse
      end

      ::Thrift::Struct.generate_accessors self
    end

    class DownloadToByteArrayFileResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      TOTALBYTESREAD = 1
      TARGET = 2
      CLOUDFILERESPONSE = 3

      FIELDS = {
        TOTALBYTESREAD => { type: ::Thrift::Types::I32, name: "totalBytesRead" },
        TARGET => { type: ::Thrift::Types::STRING, name: "target", binary: true },
        CLOUDFILERESPONSE => { type: ::Thrift::Types::STRUCT, name: "cloudFileResponse", class: ::XSS::AutoGenerated::CloudFileResponse }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field totalBytesRead is unset!") unless @totalBytesRead
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field target is unset!") unless @target
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field cloudFileResponse is unset!") unless @cloudFileResponse
      end

      ::Thrift::Struct.generate_accessors self
    end
  end
end
