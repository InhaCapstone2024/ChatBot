from langchain_aws import ChatBedrock

# chatbot 호출 함수
def bedrock_chatbot(input_text):
    bedrock_llm = ChatBedrock(
        # awscli로 설정 필요
        credentials_profile_name='default',
        model_id='anthropic.claude-3-5-sonnet-20240620-v1:0',
        model_kwargs= {
            "temperature": 0.5,
            "top_p": 1,
            "top_k": 250,
        })
    return bedrock_llm.invoke(input_text)

# chatbot에 질문 전달해서 답변 얻어오기
# bedrock_chatbot 함수에 사용자 입력 전달
response = bedrock_chatbot("프리미어리그 역대 득점 순위 알려줘").content
print(response)