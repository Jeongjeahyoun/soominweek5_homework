class MoneyController < ApplicationController
    
    def menu
        
    end
    
    # 값을 받아올 view
    def many
        
    end
    
    #view에서 data를 받아서 그 data를 db에 저장한다  
    def data
        
        @haha = params[:title]
        @haha2 = params[:writer]
        @haha3 = params[:contents]
        
        @hoho = Write.new # db테이블 칼럼을 하나 생성해준다
        @hoho.title = @haha #param 값 넣어주기 
        @hoho.writer = @haha2
        @hoho.contents = @haha3
        @hoho.save #db값을 저장 
        
        redirect_to "/list" #무조건 get방식으로 해줘야함 
    end
    
    # db에 있는 모든값을 출력해 주는 기능
    def list
        @allData = Write.all
    end
    
    def lotto
        
    end
    
    def lottolist
        @lottodata = Lotto.all
    end
    
    def lottodata
        @lotto = params[:lotto]
        
        @lottopic = @lotto+".jpg"
        
        @lottonum = Lotto.new
        @lottonum.lotto = @lottopic
        
        @lottonum.save
        
        redirect_to "/lottolist"
    end
    
end
