pub fn DoubleLinkedList(comptime T: type) type {
    return struct {
        const Self = @This();

        pub const Node = struct {
            prev: ?*Node = null,
            next: ?*Node = null,
            data: T,
        };

        first: ?*Node = null,
        last: ?*Node = null,
        len: usize = 0,

        /// Inserts a new node after an existing one
        pub fn insertAfter(list: *Self, node: *Node, new_node: *Node) void {
            // Set the previous node of the new node to the current node
            new_node.prev = node;

            if (node.next) |next_node| {
                // Intermediate node
                // Set the next node of the new node to the next node of the current node
                new_node.next = next_node;
                // Set the previous node of the next node to the new node
                next_node.prev = new_node;
            } else {
                // Last element of the list
                // Set the next node of the new node to null
                new_node.next = null;
                // Update the last node of the list to the new node
                list.last = new_node;
            }

            // Set the next node of the current node to the new node
            node.next = new_node;
            // Increment the length of the list
            list.len += 1;
        }

        /// Inserts a new node before an existing one
        pub fn insertBefore(list: *Self, node: *Node, new_node: *Node) void {
            // Set the next node of the new node to the current node
            new_node.next = node;

            if (node.prev) |prev_node| {
                // Intermediate node
                // Set the previous node of the new node to the previous node of the current node
                new_node.prev = prev_node;
                // Set the next node of the previous node to the new node
                prev_node.next = new_node;
            } else {
                // First element of the list
                // Set the previous node of the new node to null
                new_node.prev = null;
                // Update the first node of the list to the new node
                list.first = new_node;
            }

            // Set the previous node of the current node to the new node
            node.prev = new_node;
            // Increment the length of the list
            list.len += 1;
        }

        pub fn append(list: *Self, new_node: *Node) void {
            if (list.last) |last| {
                // Insert after last
                list.insertAfter(last, new_node);
            } else {
                // empty list
                list.prepend(new_node);
            }
        }
        pub fn prepend(list: *Self, new_node: *Node) void {
            if (list.first) |first| {
                // Insert before first
                list.insertBefore(first, new_node);
            } else {
                // empty list
                list.first = new_node;
                list.last = new_node;
                new_node.prev = null;
                new_node.next = null;

                list.len = 1;
            }
        }
    };
}
