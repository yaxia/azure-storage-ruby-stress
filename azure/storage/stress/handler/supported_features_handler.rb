require_relative "../auto_generated/core_types"
require_relative "base_handler"

module Azure::Storage::Stress
  module Handler
    class SupportedFeatureHandler < BaseHandler
      def initialize()
        super
        @features = [
          # Blob Service Features
          XSS::AutoGenerated::Features::BlobClient_ListContainersSegmented,
          XSS::AutoGenerated::Features::BlobClient_SetServiceProperties,
          XSS::AutoGenerated::Features::BlobClient_GetServiceProperties,
          XSS::AutoGenerated::Features::BlobClient_GetServiceStats,

          # Container Features
          XSS::AutoGenerated::Features::Container_Create,
          XSS::AutoGenerated::Features::Container_Exists,
          XSS::AutoGenerated::Features::Container_Delete,
          XSS::AutoGenerated::Features::Container_FetchAttributes,
          XSS::AutoGenerated::Features::Container_SetMetadata,
          XSS::AutoGenerated::Features::Container_AcquireLease,
          XSS::AutoGenerated::Features::Container_BreakLease,
          XSS::AutoGenerated::Features::Container_ChangeLease,
          XSS::AutoGenerated::Features::Container_RenewLease,
          XSS::AutoGenerated::Features::Container_ReleaseLease,
          XSS::AutoGenerated::Features::Container_SetPermissions,
          XSS::AutoGenerated::Features::Container_GetPermissions,
          XSS::AutoGenerated::Features::Container_ListBlobsSegmented,

          # General Blob Features
          XSS::AutoGenerated::Features::Blob_Delete,
          XSS::AutoGenerated::Features::Blob_Exists,
          XSS::AutoGenerated::Features::Blob_SetMetadata,
          XSS::AutoGenerated::Features::Blob_SetProperties,
          XSS::AutoGenerated::Features::Blob_FetchAttributes,
          XSS::AutoGenerated::Features::Blob_UploadFromStream,
          XSS::AutoGenerated::Features::Blob_DownloadRangeToStream,
          XSS::AutoGenerated::Features::Blob_UploadFromByteArray,
          XSS::AutoGenerated::Features::Blob_DownloadToByteArray,
          XSS::AutoGenerated::Features::Blob_DownloadToByteArray,
          XSS::AutoGenerated::Features::Blob_DownloadRangeToByteArray,
          XSS::AutoGenerated::Features::Blob_AcquireLease,
          XSS::AutoGenerated::Features::Blob_BreakLease,
          XSS::AutoGenerated::Features::Blob_ChangeLease,
          XSS::AutoGenerated::Features::Blob_ReleaseLease,
          XSS::AutoGenerated::Features::Blob_RenewLease,
          XSS::AutoGenerated::Features::Blob_StartCopyFromBlob,
          XSS::AutoGenerated::Features::Blob_AbortCopy,
          XSS::AutoGenerated::Features::Blob_CreateSnapShot,

          # Block Blob Features
          XSS::AutoGenerated::Features::BlockBlob_PutBlock,
          XSS::AutoGenerated::Features::BlockBlob_PutBlockList,
          XSS::AutoGenerated::Features::BlockBlob_DownloadBlockList,
          XSS::AutoGenerated::Features::BlockBlob_DownloadText,
          XSS::AutoGenerated::Features::BlockBlob_UploadText,

          # Page Blob Features
          XSS::AutoGenerated::Features::PageBlob_Create,
          XSS::AutoGenerated::Features::PageBlob_Resize,
          XSS::AutoGenerated::Features::PageBlob_SetSequenceNumber,
          XSS::AutoGenerated::Features::PageBlob_WritePages,
          XSS::AutoGenerated::Features::PageBlob_GetPageRanges,
          XSS::AutoGenerated::Features::PageBlob_ClearPages,
          XSS::AutoGenerated::Features::PageBlob_IncrementalCopy,

          # Append Blob Features
          XSS::AutoGenerated::Features::AppendBlob_Create,
          XSS::AutoGenerated::Features::AppendBlob_AppendFromByteArray,
          XSS::AutoGenerated::Features::AppendBlob_AppendBlock,
          XSS::AutoGenerated::Features::AppendBlob_DownloadText,

          # File Service Features
          # XSS::AutoGenerated::Features::FileClient_ListSharesSegmented,
          # XSS::AutoGenerated::Features::FileClient_GetServiceProperties,
          # XSS::AutoGenerated::Features::FileClient_SetServiceProperties,

          # Share Features
          # XSS::AutoGenerated::Features::FileShare_Create,
          # XSS::AutoGenerated::Features::FileShare_Delete,
          # XSS::AutoGenerated::Features::FileShare_FetchAttributes,
          # XSS::AutoGenerated::Features::FileShare_SetMetadata,
          # XSS::AutoGenerated::Features::FileShare_SetProperties,
          # XSS::AutoGenerated::Features::FileShare_GetShareStats,
          # XSS::AutoGenerated::Features::FileShare_SetPermissions,
          # XSS::AutoGenerated::Features::FileShare_GetPermissions,

          # File Features
          # XSS::AutoGenerated::Features::File_Create,
          # XSS::AutoGenerated::Features::File_WriteRange,
          # XSS::AutoGenerated::Features::File_Delete,
          # XSS::AutoGenerated::Features::File_SetMetadata,
          # XSS::AutoGenerated::Features::File_SetProperties,
          # XSS::AutoGenerated::Features::File_FetchAttributes,
          # XSS::AutoGenerated::Features::File_Resize,
          # XSS::AutoGenerated::Features::File_ClearRange,
          # XSS::AutoGenerated::Features::File_ListRanges,
          # XSS::AutoGenerated::Features::File_UploadFromByteArray,
          # XSS::AutoGenerated::Features::File_DownloadToByteArray,
          # XSS::AutoGenerated::Features::File_DownloadRangeToByteArray,
          # XSS::AutoGenerated::Features::File_UploadFromStream,
          # XSS::AutoGenerated::Features::File_StartCopy,
          # XSS::AutoGenerated::Features::File_AbortCopy,

          # Directory Features
          # XSS::AutoGenerated::Features::FileDirectory_Create,
          # XSS::AutoGenerated::Features::FileDirectory_Delete,
          # XSS::AutoGenerated::Features::FileDirectory_FetchAttributes,
          # XSS::AutoGenerated::Features::FileDirectory_ListSegmented,
          # XSS::AutoGenerated::Features::FileDirectory_SetMetadata,

          # Queue Service Features
          XSS::AutoGenerated::Features::QueueClient_ListQueuesSegmented,
          XSS::AutoGenerated::Features::QueueClient_SetProperties,
          XSS::AutoGenerated::Features::QueueClient_GetProperties,
          XSS::AutoGenerated::Features::QueueClient_GetServiceStats,

          # Queue Features
          XSS::AutoGenerated::Features::Queue_Create,
          XSS::AutoGenerated::Features::Queue_Delete,
          XSS::AutoGenerated::Features::Queue_ClearMessages,
          XSS::AutoGenerated::Features::Queue_FetchAttributes,
          XSS::AutoGenerated::Features::Queue_SetMetadata,
          XSS::AutoGenerated::Features::Queue_UpdateMessage,
          XSS::AutoGenerated::Features::Queue_AddMessage,
          XSS::AutoGenerated::Features::Queue_GetMessage,
          XSS::AutoGenerated::Features::Queue_GetMessages,
          XSS::AutoGenerated::Features::Queue_PeekMessage,
          XSS::AutoGenerated::Features::Queue_PeekMessages,
          XSS::AutoGenerated::Features::Queue_DeleteMessage,
          XSS::AutoGenerated::Features::Queue_SetPermissions,
          XSS::AutoGenerated::Features::Queue_GetPermissions,

          # Table Service Features
          XSS::AutoGenerated::Features::TableClient_GetServiceStats,
          XSS::AutoGenerated::Features::TableClient_GetServiceProperties,
          XSS::AutoGenerated::Features::TableClient_SetServiceProperties,
          XSS::AutoGenerated::Features::TableClient_ListTablesSegmented,

          # Table Features
          XSS::AutoGenerated::Features::Table_Create,
          XSS::AutoGenerated::Features::Table_Delete,
          XSS::AutoGenerated::Features::Table_Exists,
          XSS::AutoGenerated::Features::Table_SetPermissions,
          XSS::AutoGenerated::Features::Table_GetPermissions,
          XSS::AutoGenerated::Features::Table_Execute,
          XSS::AutoGenerated::Features::Table_ExecuteQuerySegment,
          XSS::AutoGenerated::Features::Table_ExecuteBatch
        ]
      end

      def GetSupportedFeatures()
        @features
      end
    end
  end
end
