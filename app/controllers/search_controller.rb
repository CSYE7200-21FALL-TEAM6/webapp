class SearchController < ApplicationController
    def index
    end
    
    def search
        @token = Time.now.utc.strftime('%m/%d/%Y %H:%M %p')
    end

    def result
        records = Record.where(keyword: params[:query], token: params[:token])
        result_num    =  Array.new(5, "0")
        like_count    =  Array.new(5, "0")
        reply_count   =  Array.new(5, "0")
        forward_count =  Array.new(5, "0")
        records do |record|
            index = record.result
            result_num[index]     += 1
            like_count[index]     += record.like
            reply_count[index]    += record.reply
            forward_count[index]  += record.forward
        end
        if params[:type] == "result"
            render status: 200, json: result_num
            return
        end
        if params[:type] == "like"
            render status: 200, json: like_count
            return
        end
        if params[:type] == "reply"
            render status: 200, json: reply_count
            return
        end
        if params[:type] == "forward"
            render status: 200, json: forward_count
            return
        end
    end

    def show_result
    end
end
