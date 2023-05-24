
customer_df = pd.read_csv('/Users/Ahn/2023/Project/SQL/1.1 고객정보.csv')
order_df = pd.read_csv('/Users/Ahn/2023/Project/SQL/3.1 주문정보.csv')
pay_df = pd.read_csv('/Users/Ahn/2023/Project/SQL/4.1 결제정보.csv')

# 3개의 데이터프레임 merge(outer join으로)
merge3 = pd.merge(customer_df, order_df, how='outer',on='회원번호')
merge3 = pd.merge(mearge3, pay_df, how='outer',on='주문번호')


l = glob.glob(r'/Users/Ahn/2023/Project/SQL*.csv')  # #합칠 파일들이 들어있는 디렉토리 경로

for i, path in enumerate(l): 
    print(path)
    
    if i==0:
        merge3 = pd.read_excel(path)
    else:
        
        merge3 = pd.merge(customer_df, order_df, how='outer',on='회원번호')
        merge3 = pd.merge(mearge3, pay_df, how='outer',on='주문번호')

        
merge3.to_csv(r'/Users/Ahn/2023/Project/SQL/merge3.csv',index=False)  # csv파일로 저장
