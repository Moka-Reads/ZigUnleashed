const std = @import("std");
const testing = std.testing;

/// A singly linked list
/// Sourced from the Zig standard library
/// https://github.com/ziglang/zig/blob/master/lib/std/linked_list.zig
/// Can alternatively be found at `std.SinglyLinkedList`
pub fn SinglyLinkedList(comptime T: type) type {
    return struct {
        const Self = @This();

        /// Node inside the linked list wrapping the actual data.
        pub const Node = struct {
            next: ?*Node = null, // Pointer to the next node in the list
            data: T, // The data stored in the node

            pub const Data = T;

            /// Insert a new node after the current one.
            pub fn insertAfter(node: *Node, new_node: *Node) void {
                // The new node points to the next node
                new_node.next = node.next;
                // The current node points to the new node
                node.next = new_node;
            }

            /// Remove a node from the list.
            pub fn removeNext(node: *Node) ?*Node {
                // Get the next node
                const next_node = node.next orelse return null;
                // The current node now points to the next node's next node
                node.next = next_node.next;
                // Return the removed node
                return next_node;
            }

            /// Iterate over the singly-linked list from this node until the final node is found.
            /// This operation is O(N).
            pub fn findLast(node: *Node) *Node {
                var it = node;
                while (true) {
                    // Keep moving to the next node until the last node is found
                    it = it.next orelse return it;
                }
            }

            /// Iterate over each next node, returning the count of all nodes except the starting one.
            /// This operation is O(N).
            pub fn countChildren(node: *const Node) usize {
                var count: usize = 0;
                var it: ?*const Node = node.next;
                while (it) |n| : (it = n.next) {
                    // Increment the count for each node
                    count += 1;
                }
                // Return the count
                return count;
            }

            /// Reverse the list starting from this node in-place.
            /// This operation is O(N).
            pub fn reverse(indirect: *?*Node) void {
                if (indirect.* == null) {
                    return;
                }
                var current: *Node = indirect.*.?;
                while (current.next) |next| {
                    // The current node points to the next node's next node
                    current.next = next.next;
                    // The next node points to the current node
                    next.next = indirect.*;
                    // The indirect pointer points to the next node
                    indirect.* = next;
                }
            }
        };

        first: ?*Node = null, // Pointer to the first node in the list

        /// Insert a new node at the head.
        pub fn prepend(list: *Self, new_node: *Node) void {
            // The new node points to the first node
            new_node.next = list.first;
            // The first node is now the new node
            list.first = new_node;
        }

        /// Remove a node from the list.
        pub fn remove(list: *Self, node: *Node) void {
            if (list.first == node) {
                // If the node is the first node, the first node becomes the next node
                list.first = node.next;
            } else {
                var current_elm = list.first.?;
                while (current_elm.next != node) {
                    // Keep moving to the next node until the node to be removed is found
                    current_elm = current_elm.next.?;
                }
                // The current node now points to the removed node's next node
                current_elm.next = node.next;
            }
        }

        /// Remove and return the first node in the list.
        pub fn popFirst(list: *Self) ?*Node {
            // Get the first node
            const first = list.first orelse return null;
            // The first node becomes the next node
            list.first = first.next;
            // Return the removed node
            return first;
        }

        /// Iterate over all nodes, returning the count.
        /// This operation is O(N).
        pub fn len(list: Self) usize {
            if (list.first) |n| {
                // Count all nodes starting from the first node
                return 1 + n.countChildren();
            } else {
                // If there's no first node, the list is empty
                return 0;
            }
        }
    };
}



test "basic SinglyLinkedList test" {
    const L = SinglyLinkedList(u32);
    var list = L{};

    try testing.expect(list.len() == 0);

    var one = L.Node{ .data = 1 };
    var two = L.Node{ .data = 2 };
    var three = L.Node{ .data = 3 };
    var four = L.Node{ .data = 4 };
    var five = L.Node{ .data = 5 };

    list.prepend(&two); // {2}
    two.insertAfter(&five); // {2, 5}
    list.prepend(&one); // {1, 2, 5}
    two.insertAfter(&three); // {1, 2, 3, 5}
    three.insertAfter(&four); // {1, 2, 3, 4, 5}

    try testing.expect(list.len() == 5);

    // Traverse forwards.
    {
        var it = list.first;
        var index: u32 = 1;
        while (it) |node| : (it = node.next) {
            try testing.expect(node.data == index);
            index += 1;
        }
    }

    _ = list.popFirst(); // {2, 3, 4, 5}
    _ = list.remove(&five); // {2, 3, 4}
    _ = two.removeNext(); // {2, 4}

    try testing.expect(list.first.?.data == 2);
    try testing.expect(list.first.?.next.?.data == 4);
    try testing.expect(list.first.?.next.?.next == null);

    L.Node.reverse(&list.first);

    try testing.expect(list.first.?.data == 4);
    try testing.expect(list.first.?.next.?.data == 2);
    try testing.expect(list.first.?.next.?.next == null);
}