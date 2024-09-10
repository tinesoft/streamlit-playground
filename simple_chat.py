import streamlit as st
import time

def clear_history():
    del st.session_state.messages

def generate_response(prompt):
    # Simulate response generation by yielding words with a delay
    for word in  f"Your question was: {prompt}".split():
        yield f"{word} "
        time.sleep(0.1)


st.title('💬 SFEIR Chat')
st.caption("a ChatGPT-like app, powered with Streamlit 🚀")

st.divider()

# Initialize the chat history with a welcome message if it doesn't exist
if 'messages' not in st.session_state:
    st.session_state.messages = [{ "role": "assistant", "content": "Hello SFEIRian, how can I help you?"}]
 
# Sidebar for chat history and clear button
with st.sidebar:
    col1, col2 =  st.columns([3,1], vertical_alignment="bottom")
    col1.title('Chat History')
    col2.button("Clear", on_click=clear_history)
    st.divider()

    for message in st.session_state.messages:
      if message["role"] == "user":
        st.write(message["content"][0:40]+"...")

# Display chat history
for message in st.session_state.messages:
    with st.chat_message(message["role"]):
        st.markdown(message["content"])

# Handle user input and generate response
if user_prompt:= st.chat_input("Type your question here", key="user_prompt"):
    with st.chat_message("user"):
        st.markdown(user_prompt)

    with st.chat_message("assistant"):
     response = st.write_stream(generate_response(user_prompt))

    st.session_state.messages.append({"role": "user", "content": user_prompt});
    st.session_state.messages.append({"role": "assistant", "content": response})


