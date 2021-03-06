#
# Auto-generated by Thrift Compiler (0.9.2)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require "thrift"
require_relative "core_types"


module Azure::Storage::Stress
  module AutoGenerated
    module LeaseAction
      Acquire = 0
      Renew = 1
      Release = 2
      Break = 3
      Change = 4
      VALUE_MAP = { 0 => "Acquire", 1 => "Renew", 2 => "Release", 3 => "Break", 4 => "Change" }
      VALID_VALUES = Set.new([Acquire, Renew, Release, Break, Change]).freeze
    end

    module LeaseDuration
      Unspecified = 0
      Fixed = 1
      Infinite = 2
      VALUE_MAP = { 0 => "Unspecified", 1 => "Fixed", 2 => "Infinite" }
      VALID_VALUES = Set.new([Unspecified, Fixed, Infinite]).freeze
    end

    module LeaseState
      Unspecified = 0
      Available = 1
      Leased = 2
      Expired = 3
      Breaking = 4
      Broken = 5
      VALUE_MAP = { 0 => "Unspecified", 1 => "Available", 2 => "Leased", 3 => "Expired", 4 => "Breaking", 5 => "Broken" }
      VALID_VALUES = Set.new([Unspecified, Available, Leased, Expired, Breaking, Broken]).freeze
    end

    module LeaseStatus
      Unspecified = 0
      Locked = 1
      Unlocked = 2
      VALUE_MAP = { 0 => "Unspecified", 1 => "Locked", 2 => "Unlocked" }
      VALID_VALUES = Set.new([Unspecified, Locked, Unlocked]).freeze
    end

    module BlobContainerPublicAccessType
      Off = 0
      Container = 1
      Blob = 2
      Unknown = 3
      VALUE_MAP = { 0 => "Off", 1 => "Container", 2 => "Blob", 3 => "Unknown" }
      VALID_VALUES = Set.new([Off, Container, Blob, Unknown]).freeze
    end

    module ThriftSharedAccessBlobPermissions
      None = 0
      Read = 1
      Write = 2
      Delete = 4
      List = 8
      VALUE_MAP = { 0 => "None", 1 => "Read", 2 => "Write", 4 => "Delete", 8 => "List" }
      VALID_VALUES = Set.new([None, Read, Write, Delete, List]).freeze
    end

    module BlobContainerListingDetails
      None = 0
      Metadata = 1
      All = 2
      VALUE_MAP = { 0 => "None", 1 => "Metadata", 2 => "All" }
      VALID_VALUES = Set.new([None, Metadata, All]).freeze
    end

    module BlobType
      Unspecified = 0
      PageBlob = 1
      BlockBlob = 2
      AppendBlob = 3
      VALUE_MAP = { 0 => "Unspecified", 1 => "PageBlob", 2 => "BlockBlob", 3 => "AppendBlob" }
      VALID_VALUES = Set.new([Unspecified, PageBlob, BlockBlob, AppendBlob]).freeze
    end

    module SequenceNumberAction
      Increment = 0
      Max = 1
      Update = 2
      VALUE_MAP = { 0 => "Increment", 1 => "Max", 2 => "Update" }
      VALID_VALUES = Set.new([Increment, Max, Update]).freeze
    end

    module DeleteSnapshotsOption
      None = 0
      IncludeSnapshots = 1
      DeleteSnapshotsOnly = 2
      VALUE_MAP = { 0 => "None", 1 => "IncludeSnapshots", 2 => "DeleteSnapshotsOnly" }
      VALID_VALUES = Set.new([None, IncludeSnapshots, DeleteSnapshotsOnly]).freeze
    end

    module StandardBlobTier
      Unknown = 0
      Hot = 1
      Cool = 2
      Archive = 3
      VALUE_MAP = { 0 => "Unknown", 1 => "Hot", 2 => "Cool", 3 => "Archive" }
      VALID_VALUES = Set.new([Unknown, Hot, Cool, Archive]).freeze
    end

    module PremiumPageBlobTier
      Unknown = 1
      P4 = 2
      P6 = 3
      P10 = 4
      P20 = 5
      P30 = 6
      P40 = 7
      P50 = 8
      P60 = 9
      VALUE_MAP = { 1 => "Unknown", 2 => "P4", 3 => "P6", 4 => "P10", 5 => "P20", 6 => "P30", 7 => "P40", 8 => "P50", 9 => "P60" }
      VALID_VALUES = Set.new([Unknown, P4, P6, P10, P20, P30, P40, P50, P60]).freeze
    end

    module RehydrationStatus
      Unknown = 1
      PendingToHot = 2
      PendingToCool = 3
      VALUE_MAP = { 1 => "Unknown", 2 => "PendingToHot", 3 => "PendingToCool" }
      VALID_VALUES = Set.new([Unknown, PendingToHot, PendingToCool]).freeze
    end

    module BlockListingFilters
      All = 0
      Committed = 1
      Uncommitted = 2
      VALUE_MAP = { 0 => "All", 1 => "Committed", 2 => "Uncommitted" }
      VALID_VALUES = Set.new([All, Committed, Uncommitted]).freeze
    end

    module ThriftBlobListingDetails
      None = 0
      Snapshots = 1
      Metadata = 2
      UncommittedBlobs = 4
      Copy = 8
      Deleted = 16
      All = 31
      VALUE_MAP = { 0 => "None", 1 => "Snapshots", 2 => "Metadata", 4 => "UncommittedBlobs", 8 => "Copy", 16 => "Deleted", 31 => "All" }
      VALID_VALUES = Set.new([None, Snapshots, Metadata, UncommittedBlobs, Copy, Deleted, All]).freeze
    end

    class ThriftSharedAccessBlobPolicy
      include ::Thrift::Struct, ::Thrift::Struct_Union
      PERMISSIONS = 1
      EXPIRYTIME = 2
      STARTTIME = 3

      FIELDS = {
        PERMISSIONS => { type: ::Thrift::Types::STRING, name: "permissions" },
        EXPIRYTIME => { type: ::Thrift::Types::I64, name: "expiryTime", optional: true },
        STARTTIME => { type: ::Thrift::Types::I64, name: "startTime", optional: true }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field permissions is unset!") unless @permissions
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ThriftBlobContainerPermissions
      include ::Thrift::Struct, ::Thrift::Struct_Union
      CONTAINERACCESSTYPE = 1
      SHAREDACCESSPOLICIES = 2

      FIELDS = {
        CONTAINERACCESSTYPE => { type: ::Thrift::Types::I32, name: "containerAccessType", enum_class: ::XSS::AutoGenerated::BlobContainerPublicAccessType },
        SHAREDACCESSPOLICIES => { type: ::Thrift::Types::MAP, name: "sharedAccessPolicies", key: { type: ::Thrift::Types::STRING }, value: { type: ::Thrift::Types::STRUCT, class: ::XSS::AutoGenerated::ThriftSharedAccessBlobPolicy } }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field containerAccessType is unset!") unless @containerAccessType
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field sharedAccessPolicies is unset!") unless @sharedAccessPolicies
        unless @containerAccessType.nil? || ::XSS::AutoGenerated::BlobContainerPublicAccessType::VALID_VALUES.include?(@containerAccessType)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Invalid value of field containerAccessType!")
        end
      end

      ::Thrift::Struct.generate_accessors self
    end

    # A base required response object that must be returned as part of
    # all blob container service APIs.  This includes core information
    # needed to fill in blob container properties that are returned
    # from any container API call.
    #
    # @param etag
    #     The quoted etag value for the container
    #
    # @param lastModified
    #     The container's last modified time in UTC
    #
    # @param metadata
    #     The container's metadata
    #
    # @param leaseStatus
    #     The container's lease status
    #
    # @param leaseState
    #     The container's lease state
    #
    # @param leaseDuration
    #     The container's lease duration
    #
    class BlobContainerResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      ETAG = 1
      LASTMODIFIED = 2
      LEASESTATUS = 3
      LEASESTATE = 4
      LEASEDURATION = 5
      PUBLICACCESSTYPE = 6
      METADATA = 7

      FIELDS = {
        ETAG => { type: ::Thrift::Types::STRING, name: "etag" },
        LASTMODIFIED => { type: ::Thrift::Types::I64, name: "lastModified" },
        LEASESTATUS => { type: ::Thrift::Types::I32, name: "leaseStatus", enum_class: ::XSS::AutoGenerated::LeaseStatus },
        LEASESTATE => { type: ::Thrift::Types::I32, name: "leaseState", enum_class: ::XSS::AutoGenerated::LeaseState },
        LEASEDURATION => { type: ::Thrift::Types::I32, name: "leaseDuration", enum_class: ::XSS::AutoGenerated::LeaseDuration },
        PUBLICACCESSTYPE => { type: ::Thrift::Types::I32, name: "publicAccessType", enum_class: ::XSS::AutoGenerated::BlobContainerPublicAccessType },
        METADATA => { type: ::Thrift::Types::MAP, name: "metadata", key: { type: ::Thrift::Types::STRING }, value: { type: ::Thrift::Types::STRING }, optional: true }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field etag is unset!") unless @etag
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field lastModified is unset!") unless @lastModified
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field leaseStatus is unset!") unless @leaseStatus
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field leaseState is unset!") unless @leaseState
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field leaseDuration is unset!") unless @leaseDuration
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field publicAccessType is unset!") unless @publicAccessType
        unless @leaseStatus.nil? || ::XSS::AutoGenerated::LeaseStatus::VALID_VALUES.include?(@leaseStatus)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Invalid value of field leaseStatus!")
        end
        unless @leaseState.nil? || ::XSS::AutoGenerated::LeaseState::VALID_VALUES.include?(@leaseState)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Invalid value of field leaseState!")
        end
        unless @leaseDuration.nil? || ::XSS::AutoGenerated::LeaseDuration::VALID_VALUES.include?(@leaseDuration)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Invalid value of field leaseDuration!")
        end
        unless @publicAccessType.nil? || ::XSS::AutoGenerated::BlobContainerPublicAccessType::VALID_VALUES.include?(@publicAccessType)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Invalid value of field publicAccessType!")
        end
      end

      ::Thrift::Struct.generate_accessors self
    end

    class BlobContainerExistsResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      EXISTS = 1
      RESPONSE = 2

      FIELDS = {
        EXISTS => { type: ::Thrift::Types::BOOL, name: "exists" },
        RESPONSE => { type: ::Thrift::Types::STRUCT, name: "response", class: ::XSS::AutoGenerated::BlobContainerResponse, optional: true }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field exists is unset!") if @exists.nil?
      end

      ::Thrift::Struct.generate_accessors self
    end

    # A response representing returned state from a create container service operation
    #
    # @param containerCreated
    #     A bool indicating if the container was created or not
    #
    # @param containerResponse
    #     Container response information, including container properties and metadata
    class CreateContainerResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      CONTAINERCREATED = 1
      CONTAINERRESPONSE = 2

      FIELDS = {
        CONTAINERCREATED => { type: ::Thrift::Types::BOOL, name: "containerCreated" },
        CONTAINERRESPONSE => { type: ::Thrift::Types::STRUCT, name: "containerResponse", class: ::XSS::AutoGenerated::BlobContainerResponse }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field containerCreated is unset!") if @containerCreated.nil?
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field containerResponse is unset!") unless @containerResponse
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ContainerChangeAcquireLeaseResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      LEASEID = 1
      RESPONSE = 2

      FIELDS = {
        LEASEID => { type: ::Thrift::Types::STRING, name: "leaseId" },
        RESPONSE => { type: ::Thrift::Types::STRUCT, name: "response", class: ::XSS::AutoGenerated::BlobContainerResponse }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field leaseId is unset!") unless @leaseId
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field response is unset!") unless @response
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ContainerBreakLeaseResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      REMAININGLEASETIMEINSECONDS = 1
      RESPONSE = 2

      FIELDS = {
        REMAININGLEASETIMEINSECONDS => { type: ::Thrift::Types::I64, name: "remainingLeaseTimeinSeconds" },
        RESPONSE => { type: ::Thrift::Types::STRUCT, name: "response", class: ::XSS::AutoGenerated::BlobContainerResponse }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field remainingLeaseTimeinSeconds is unset!") unless @remainingLeaseTimeinSeconds
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field response is unset!") unless @response
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ContainerGetPermissionsResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      PERMISSIONS = 1
      RESPONSE = 2

      FIELDS = {
        PERMISSIONS => { type: ::Thrift::Types::STRUCT, name: "permissions", class: ::XSS::AutoGenerated::ThriftBlobContainerPermissions },
        RESPONSE => { type: ::Thrift::Types::STRUCT, name: "response", class: ::XSS::AutoGenerated::BlobContainerResponse }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field permissions is unset!") unless @permissions
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field response is unset!") unless @response
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ThriftBlobRequestOptions
      include ::Thrift::Struct, ::Thrift::Struct_Union
      DISABLECONTENTMD5VALIDATION = 1
      LOCATIONMODE = 2
      SERVERTIMEOUTSECONDS = 3
      MAXIMUMEXECUTIONTIMESECONDS = 4
      SINGLEBLOBUPLOADTHRESHOLDBYTES = 5
      STOREBLOBCONTENTMD5 = 6
      USETRANSACTIONALMD5 = 7
      ABSORBCONDITIONALERRORSONRETRY = 8
      PARALLELOPERATIONTHREADCOUNT = 9

      FIELDS = {
        DISABLECONTENTMD5VALIDATION => { type: ::Thrift::Types::BOOL, name: "DisableContentMD5Validation", optional: true },
        LOCATIONMODE => { type: ::Thrift::Types::I32, name: "LocationMode", optional: true, enum_class: ::XSS::AutoGenerated::LocationMode },
        SERVERTIMEOUTSECONDS => { type: ::Thrift::Types::I32, name: "serverTimeoutSeconds", optional: true },
        MAXIMUMEXECUTIONTIMESECONDS => { type: ::Thrift::Types::I32, name: "maximumExecutionTimeSeconds", optional: true },
        SINGLEBLOBUPLOADTHRESHOLDBYTES => { type: ::Thrift::Types::I64, name: "singleBlobUploadThresholdBytes", optional: true },
        STOREBLOBCONTENTMD5 => { type: ::Thrift::Types::BOOL, name: "storeBlobContentMD5", optional: true },
        USETRANSACTIONALMD5 => { type: ::Thrift::Types::BOOL, name: "useTransactionalMD5", optional: true },
        ABSORBCONDITIONALERRORSONRETRY => { type: ::Thrift::Types::BOOL, name: "absorbConditionalErrorsOnRetry", optional: true },
        PARALLELOPERATIONTHREADCOUNT => { type: ::Thrift::Types::I32, name: "parallelOperationThreadCount", optional: true }
      }

      def struct_fields; FIELDS; end

      def validate
        unless @LocationMode.nil? || ::XSS::AutoGenerated::LocationMode::VALID_VALUES.include?(@LocationMode)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Invalid value of field LocationMode!")
        end
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ThriftPageRange
      include ::Thrift::Struct, ::Thrift::Struct_Union
      ENDOFFSET = 1
      STARTOFFSET = 2

      FIELDS = {
        ENDOFFSET => { type: ::Thrift::Types::I64, name: "endOffset" },
        STARTOFFSET => { type: ::Thrift::Types::I64, name: "startOffset" }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field endOffset is unset!") unless @endOffset
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field startOffset is unset!") unless @startOffset
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ThriftPageDiffRange
      include ::Thrift::Struct, ::Thrift::Struct_Union
      ENDOFFSET = 1
      STARTOFFSET = 2
      ISCLEARED = 3

      FIELDS = {
        ENDOFFSET => { type: ::Thrift::Types::I64, name: "endOffset" },
        STARTOFFSET => { type: ::Thrift::Types::I64, name: "startOffset" },
        ISCLEARED => { type: ::Thrift::Types::BOOL, name: "isCleared" }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field endOffset is unset!") unless @endOffset
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field startOffset is unset!") unless @startOffset
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field isCleared is unset!") if @isCleared.nil?
      end

      ::Thrift::Struct.generate_accessors self
    end

    # A base required response object that is returned as part of all blob-related
    # service APIs.  It includes blob metadata and properties.
    class CloudBlobResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      ETAG = 1
      LASTMODIFIED = 2
      METADATA = 3
      LEASESTATUS = 4
      LEASESTATE = 5
      LEASEDURATION = 6
      CACHECONTROL = 7
      CONTENTDISPOSITION = 8
      CONTENTENCODING = 9
      CONTENTLANGUAGE = 10
      LENGTH = 11
      CONTENTMD5 = 12
      CONTENTTYPE = 13
      BLOBTYPE = 14
      PAGEBLOBSEQUENCENUMBER = 15
      SNAPSHOTTIME = 16
      COPYSTATE = 17
      ISINCREMENTALCOPY = 18
      STANDARDBLOBTIER = 19
      PREMIUMPAGEBLOBTIER = 20
      REHYDRATIONSTATUS = 21
      BLOBTIERINFERRED = 22
      ISSNAPSHOT = 23
      ISDELETED = 24
      DELETEDTIME = 25

      FIELDS = {
        ETAG => { type: ::Thrift::Types::STRING, name: "etag" },
        LASTMODIFIED => { type: ::Thrift::Types::I64, name: "lastModified" },
        METADATA => { type: ::Thrift::Types::MAP, name: "metadata", key: { type: ::Thrift::Types::STRING }, value: { type: ::Thrift::Types::STRING }, optional: true },
        LEASESTATUS => { type: ::Thrift::Types::I32, name: "leaseStatus", optional: true, enum_class: ::XSS::AutoGenerated::LeaseStatus },
        LEASESTATE => { type: ::Thrift::Types::I32, name: "leaseState", optional: true, enum_class: ::XSS::AutoGenerated::LeaseState },
        LEASEDURATION => { type: ::Thrift::Types::I32, name: "leaseDuration", optional: true, enum_class: ::XSS::AutoGenerated::LeaseDuration },
        CACHECONTROL => { type: ::Thrift::Types::STRING, name: "cacheControl", optional: true },
        CONTENTDISPOSITION => { type: ::Thrift::Types::STRING, name: "contentDisposition", optional: true },
        CONTENTENCODING => { type: ::Thrift::Types::STRING, name: "contentEncoding", optional: true },
        CONTENTLANGUAGE => { type: ::Thrift::Types::STRING, name: "contentLanguage", optional: true },
        LENGTH => { type: ::Thrift::Types::I64, name: "length", optional: true },
        CONTENTMD5 => { type: ::Thrift::Types::STRING, name: "contentMd5", optional: true },
        CONTENTTYPE => { type: ::Thrift::Types::STRING, name: "contentType", optional: true },
        BLOBTYPE => { type: ::Thrift::Types::I32, name: "blobType", optional: true, enum_class: ::XSS::AutoGenerated::BlobType },
        PAGEBLOBSEQUENCENUMBER => { type: ::Thrift::Types::I64, name: "PageBlobSequenceNumber", optional: true },
        SNAPSHOTTIME => { type: ::Thrift::Types::I64, name: "snapshotTime", optional: true },
        COPYSTATE => { type: ::Thrift::Types::STRUCT, name: "copyState", class: ::XSS::AutoGenerated::ThriftCopyState, optional: true },
        ISINCREMENTALCOPY => { type: ::Thrift::Types::BOOL, name: "isIncrementalCopy", optional: true },
        STANDARDBLOBTIER => { type: ::Thrift::Types::I32, name: "standardBlobTier", optional: true, enum_class: ::XSS::AutoGenerated::StandardBlobTier },
        PREMIUMPAGEBLOBTIER => { type: ::Thrift::Types::I32, name: "premiumPageBlobTier", optional: true, enum_class: ::XSS::AutoGenerated::PremiumPageBlobTier },
        REHYDRATIONSTATUS => { type: ::Thrift::Types::I32, name: "rehydrationStatus", optional: true, enum_class: ::XSS::AutoGenerated::RehydrationStatus },
        BLOBTIERINFERRED => { type: ::Thrift::Types::BOOL, name: "blobTierInferred", optional: true },
        ISSNAPSHOT => { type: ::Thrift::Types::BOOL, name: "isSnapshot", optional: true },
        ISDELETED => { type: ::Thrift::Types::BOOL, name: "isDeleted", optional: true },
        DELETEDTIME => { type: ::Thrift::Types::I64, name: "deletedTime", optional: true }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field etag is unset!") unless @etag
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field lastModified is unset!") unless @lastModified
        unless @leaseStatus.nil? || ::XSS::AutoGenerated::LeaseStatus::VALID_VALUES.include?(@leaseStatus)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Invalid value of field leaseStatus!")
        end
        unless @leaseState.nil? || ::XSS::AutoGenerated::LeaseState::VALID_VALUES.include?(@leaseState)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Invalid value of field leaseState!")
        end
        unless @leaseDuration.nil? || ::XSS::AutoGenerated::LeaseDuration::VALID_VALUES.include?(@leaseDuration)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Invalid value of field leaseDuration!")
        end
        unless @blobType.nil? || ::XSS::AutoGenerated::BlobType::VALID_VALUES.include?(@blobType)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Invalid value of field blobType!")
        end
        unless @standardBlobTier.nil? || ::XSS::AutoGenerated::StandardBlobTier::VALID_VALUES.include?(@standardBlobTier)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Invalid value of field standardBlobTier!")
        end
        unless @premiumPageBlobTier.nil? || ::XSS::AutoGenerated::PremiumPageBlobTier::VALID_VALUES.include?(@premiumPageBlobTier)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Invalid value of field premiumPageBlobTier!")
        end
        unless @rehydrationStatus.nil? || ::XSS::AutoGenerated::RehydrationStatus::VALID_VALUES.include?(@rehydrationStatus)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Invalid value of field rehydrationStatus!")
        end
      end

      ::Thrift::Struct.generate_accessors self
    end

    class BlobExistsResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      EXISTS = 1
      RESPONSE = 2

      FIELDS = {
        EXISTS => { type: ::Thrift::Types::BOOL, name: "exists" },
        RESPONSE => { type: ::Thrift::Types::STRUCT, name: "response", class: ::XSS::AutoGenerated::CloudBlobResponse, optional: true }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field exists is unset!") if @exists.nil?
      end

      ::Thrift::Struct.generate_accessors self
    end

    class BlobDownloadToByteArrayResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      BYTESREAD = 1
      TARGET = 2
      RESPONSE = 3

      FIELDS = {
        BYTESREAD => { type: ::Thrift::Types::I32, name: "bytesRead" },
        TARGET => { type: ::Thrift::Types::STRING, name: "target", binary: true },
        RESPONSE => { type: ::Thrift::Types::STRUCT, name: "response", class: ::XSS::AutoGenerated::CloudBlobResponse }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field bytesRead is unset!") unless @bytesRead
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field target is unset!") unless @target
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field response is unset!") unless @response
      end

      ::Thrift::Struct.generate_accessors self
    end

    class BlobDownloadTextResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      CONTENTS = 1
      RESPONSE = 2

      FIELDS = {
        CONTENTS => { type: ::Thrift::Types::STRING, name: "contents" },
        RESPONSE => { type: ::Thrift::Types::STRUCT, name: "response", class: ::XSS::AutoGenerated::CloudBlobResponse }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field contents is unset!") unless @contents
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field response is unset!") unless @response
      end

      ::Thrift::Struct.generate_accessors self
    end

    class BlobChangeAcquireLeaseResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      LEASEID = 1
      RESPONSE = 2

      FIELDS = {
        LEASEID => { type: ::Thrift::Types::STRING, name: "leaseId" },
        RESPONSE => { type: ::Thrift::Types::STRUCT, name: "response", class: ::XSS::AutoGenerated::CloudBlobResponse }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field leaseId is unset!") unless @leaseId
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field response is unset!") unless @response
      end

      ::Thrift::Struct.generate_accessors self
    end

    class BlobBreakLeaseResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      REMAININGLEASETIMEINSECONDS = 1
      RESPONSE = 2

      FIELDS = {
        REMAININGLEASETIMEINSECONDS => { type: ::Thrift::Types::I64, name: "remainingLeaseTimeinSeconds" },
        RESPONSE => { type: ::Thrift::Types::STRUCT, name: "response", class: ::XSS::AutoGenerated::CloudBlobResponse }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field remainingLeaseTimeinSeconds is unset!") unless @remainingLeaseTimeinSeconds
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field response is unset!") unless @response
      end

      ::Thrift::Struct.generate_accessors self
    end

    class BlobStartCopyFromBlobResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      COPYID = 1
      RESPONSE = 2

      FIELDS = {
        COPYID => { type: ::Thrift::Types::STRING, name: "copyID" },
        RESPONSE => { type: ::Thrift::Types::STRUCT, name: "response", class: ::XSS::AutoGenerated::CloudBlobResponse }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field copyID is unset!") unless @copyID
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field response is unset!") unless @response
      end

      ::Thrift::Struct.generate_accessors self
    end

    class BlobGetPageRangesResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      PAGERANGES = 1
      RESPONSE = 2

      FIELDS = {
        PAGERANGES => { type: ::Thrift::Types::LIST, name: "pageRanges", element: { type: ::Thrift::Types::STRUCT, class: ::XSS::AutoGenerated::ThriftPageRange } },
        RESPONSE => { type: ::Thrift::Types::STRUCT, name: "response", class: ::XSS::AutoGenerated::CloudBlobResponse }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field pageRanges is unset!") unless @pageRanges
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field response is unset!") unless @response
      end

      ::Thrift::Struct.generate_accessors self
    end

    class BlobGetPageDiffRangesResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      PAGEDIFFRANGES = 1
      RESPONSE = 2

      FIELDS = {
        PAGEDIFFRANGES => { type: ::Thrift::Types::LIST, name: "pageDiffRanges", element: { type: ::Thrift::Types::STRUCT, class: ::XSS::AutoGenerated::ThriftPageDiffRange } },
        RESPONSE => { type: ::Thrift::Types::STRUCT, name: "response", class: ::XSS::AutoGenerated::CloudBlobResponse }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field pageDiffRanges is unset!") unless @pageDiffRanges
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field response is unset!") unless @response
      end

      ::Thrift::Struct.generate_accessors self
    end

    class AppendBlockFromByteArrayResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      BYTESREAD = 1
      RESPONSE = 2

      FIELDS = {
        BYTESREAD => { type: ::Thrift::Types::I64, name: "bytesRead" },
        RESPONSE => { type: ::Thrift::Types::STRUCT, name: "response", class: ::XSS::AutoGenerated::CloudBlobResponse }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field bytesRead is unset!") unless @bytesRead
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field response is unset!") unless @response
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ThriftBlobContinuationToken
      include ::Thrift::Struct, ::Thrift::Struct_Union
      NEXTMARKER = 1
      TARGETLOCATION = 2

      FIELDS = {
        NEXTMARKER => { type: ::Thrift::Types::STRING, name: "nextMarker" },
        TARGETLOCATION => { type: ::Thrift::Types::I32, name: "targetLocation", optional: true, enum_class: ::XSS::AutoGenerated::StorageLocation }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field nextMarker is unset!") unless @nextMarker
        unless @targetLocation.nil? || ::XSS::AutoGenerated::StorageLocation::VALID_VALUES.include?(@targetLocation)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Invalid value of field targetLocation!")
        end
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ThriftCloudBlobContainer
      include ::Thrift::Struct, ::Thrift::Struct_Union
      URI = 1
      NAME = 2
      PROPERTIES = 3
      SERVICECLIENTURI = 4
      METADATA = 5

      FIELDS = {
        URI => { type: ::Thrift::Types::STRUCT, name: "uri", class: ::XSS::AutoGenerated::CloudStorageUri },
        NAME => { type: ::Thrift::Types::STRING, name: "name" },
        PROPERTIES => { type: ::Thrift::Types::STRUCT, name: "properties", class: ::XSS::AutoGenerated::BlobContainerResponse },
        SERVICECLIENTURI => { type: ::Thrift::Types::STRUCT, name: "serviceClientUri", class: ::XSS::AutoGenerated::CloudStorageUri },
        METADATA => { type: ::Thrift::Types::MAP, name: "metadata", key: { type: ::Thrift::Types::STRING }, value: { type: ::Thrift::Types::STRING } }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field uri is unset!") unless @uri
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field name is unset!") unless @name
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field properties is unset!") unless @properties
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field serviceClientUri is unset!") unless @serviceClientUri
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field metadata is unset!") unless @metadata
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ListBlobItem
      include ::Thrift::Struct, ::Thrift::Struct_Union
      URI = 1
      PARENTCONTAINERURI = 2
      BLOBPROPERTIES = 3

      FIELDS = {
        URI => { type: ::Thrift::Types::STRUCT, name: "uri", class: ::XSS::AutoGenerated::CloudStorageUri },
        PARENTCONTAINERURI => { type: ::Thrift::Types::STRUCT, name: "parentContainerUri", class: ::XSS::AutoGenerated::CloudStorageUri },
        BLOBPROPERTIES => { type: ::Thrift::Types::STRUCT, name: "blobProperties", class: ::XSS::AutoGenerated::CloudBlobResponse }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field uri is unset!") unless @uri
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field parentContainerUri is unset!") unless @parentContainerUri
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field blobProperties is unset!") unless @blobProperties
      end

      ::Thrift::Struct.generate_accessors self
    end

    class BlobCreateSnapshotResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      CREATEDBLOB = 1
      RESPONSE = 2

      FIELDS = {
        CREATEDBLOB => { type: ::Thrift::Types::STRUCT, name: "createdBlob", class: ::XSS::AutoGenerated::ListBlobItem },
        RESPONSE => { type: ::Thrift::Types::STRUCT, name: "response", class: ::XSS::AutoGenerated::CloudBlobResponse }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field createdBlob is unset!") unless @createdBlob
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field response is unset!") unless @response
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ListBlobsPayload
      include ::Thrift::Struct, ::Thrift::Struct_Union
      THRIFTREQUESTOPTIONS = 1
      THRIFTOPERATIONCONTEXT = 2
      PREFIX = 3
      USEFLATBLOBLISTING = 4
      LISTINGDETAILS = 5

      FIELDS = {
        THRIFTREQUESTOPTIONS => { type: ::Thrift::Types::STRUCT, name: "thriftRequestOptions", class: ::XSS::AutoGenerated::ThriftBlobRequestOptions, optional: true },
        THRIFTOPERATIONCONTEXT => { type: ::Thrift::Types::STRUCT, name: "thriftOperationContext", class: ::XSS::AutoGenerated::OperationContext, optional: true },
        PREFIX => { type: ::Thrift::Types::STRING, name: "prefix", optional: true },
        USEFLATBLOBLISTING => { type: ::Thrift::Types::BOOL, name: "useFlatBlobListing", optional: true },
        LISTINGDETAILS => { type: ::Thrift::Types::I32, name: "listingDetails", optional: true }
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ListContainersPayload
      include ::Thrift::Struct, ::Thrift::Struct_Union
      THRIFTREQUESTOPTIONS = 1
      THRIFTOPERATIONCONTEXT = 2
      PREFIX = 3
      CONTAINERLISTINGDETAILS = 4

      FIELDS = {
        THRIFTREQUESTOPTIONS => { type: ::Thrift::Types::STRUCT, name: "thriftRequestOptions", class: ::XSS::AutoGenerated::ThriftBlobRequestOptions, optional: true },
        THRIFTOPERATIONCONTEXT => { type: ::Thrift::Types::STRUCT, name: "thriftOperationContext", class: ::XSS::AutoGenerated::OperationContext, optional: true },
        PREFIX => { type: ::Thrift::Types::STRING, name: "prefix", optional: true },
        CONTAINERLISTINGDETAILS => { type: ::Thrift::Types::I32, name: "containerListingDetails", optional: true, enum_class: ::XSS::AutoGenerated::BlobContainerListingDetails }
      }

      def struct_fields; FIELDS; end

      def validate
        unless @containerListingDetails.nil? || ::XSS::AutoGenerated::BlobContainerListingDetails::VALID_VALUES.include?(@containerListingDetails)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Invalid value of field containerListingDetails!")
        end
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ListBlobsResponse
      include ::Thrift::Struct, ::Thrift::Struct_Union
      BLOBLIST = 1
      CONTINUATIONTOKEN = 2

      FIELDS = {
        BLOBLIST => { type: ::Thrift::Types::LIST, name: "blobList", element: { type: ::Thrift::Types::STRUCT, class: ::XSS::AutoGenerated::ListBlobItem } },
        CONTINUATIONTOKEN => { type: ::Thrift::Types::STRUCT, name: "continuationToken", class: ::XSS::AutoGenerated::ThriftBlobContinuationToken, optional: true }
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, "Required field blobList is unset!") unless @blobList
      end

      ::Thrift::Struct.generate_accessors self
    end
  end
end
