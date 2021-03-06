require_relative "base_handler"
require_relative "../utils"
require_relative "../auto_generated/cloud_file_client_service"
require_relative "../converter/core_converter"
require_relative "../converter/file_converter"
require_relative "../infrastructure/logging_aspect"


module Azure::Storage::Stress
  module Handler
    class CloudFileClientHandler < BaseHandler
      def listShares(accountInfo, prefix, detailsIncluded, fileRequestOptions, operationContext)
        fileClient = XSS::Converter::FileConverter.getFileService(self, accountInfo)
        # ==== Construct Parameters ==== #
        # ==== Operation ==== #
        # ==== Construct Return Value ==== #
      end



      def listSharesSegmented(accountInfo, prefix, detailsIncluded, maxResults, continuationToken, fileRequestOptions, operationContext)
        fileClient = XSS::Converter::FileConverter.getFileService(self, accountInfo)
        # ==== Construct Parameters ==== #
        # ==== Operation ==== #
        # ==== Construct Return Value ==== #
      end



      def setProperties(thriftRequestOptions, accountInfo, thriftOperationContext, properties)
        fileClient = XSS::Converter::FileConverter.getFileService(self, accountInfo)
        # ==== Construct Parameters ==== #
        # ==== Operation ==== #
        # ==== Construct Return Value ==== #
      end



      def getProperties(thriftRequestOptions, accountInfo, thriftOperationContext)
        fileClient = XSS::Converter::FileConverter.getFileService(self, accountInfo)
        # ==== Construct Parameters ==== #
        # ==== Operation ==== #
        # ==== Construct Return Value ==== #
      end
    end
  end
end
