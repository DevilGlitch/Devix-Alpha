import java.util.ArrayList;
import java.util.List;

public class MessageBoard {
    private List<Message> messages;

    public MessageBoard() {
        messages = new ArrayList<>();
    }

    public void addMessage(Message message) {
        messages.add(message);
    }

    public List<Message> getMessages() {
        return messages;
    }
}
