#include <stdlib.h>
#include "fine_initialize_monitor.h" 

#ifdef ACES_LIST
#include "list/aces_list.h" 

#endif
#ifdef ACES_AVLTREE
#include "tree/aces_avltree.h" 

#endif
#ifdef ACES_HASH
#include "hash/aces_hash.h" 

#endif
struct BBNode;
#ifdef ACES_LIST
struct list;

typedef list INTEGRATED_CFG;
#endif

#ifdef ACES_AVLTREE
struct avl_tree;

typedef avl_tree INTEGRATED_CFG;
#endif

#ifdef ACES_HASH
struct Hash;

typedef Hash INTEGRATED_CFG;
#endif

extern INTEGRATED_CFG* p_integrated_CFG;
extern unsigned int leverage_signature;

INTEGRATED_CFG* generate_path_tree();
void add_basicblock(INTEGRATED_CFG* ,unsigned int, unsigned int, unsigned int, unsigned int);
void initialize_monitor_routine(unsigned int node_id)
{
	p_integrated_CFG = generate_path_tree();
	add_basicblock(p_integrated_CFG, 0x10001, 1, 0x1, 0x10002);
	add_basicblock(p_integrated_CFG, 0x10002, 1, 0x1, 0x10003);
	add_basicblock(p_integrated_CFG, 0x10003, 1, 0x1, 0x10004);
	add_basicblock(p_integrated_CFG, 0x10004, 1, 0x1, 0x10005);
	add_basicblock(p_integrated_CFG, 0x10005, 1, 0x1, 0x10006);
	add_basicblock(p_integrated_CFG, 0x10006, 2, 0x2, 0x10007);
	add_basicblock(p_integrated_CFG, 0x10006, 2, 0x2, 0x10008);
	add_basicblock(p_integrated_CFG, 0x10007, 1, 0x1, 0x10009);
	add_basicblock(p_integrated_CFG, 0x10008, 1, 0x1, 0x10009);
	add_basicblock(p_integrated_CFG, 0x10009, 1, 0x1, 0x1000a);
	add_basicblock(p_integrated_CFG, 0x1000a, 2, 0x2, 0x1000b);
	add_basicblock(p_integrated_CFG, 0x1000a, 2, 0x2, 0x10020);
	add_basicblock(p_integrated_CFG, 0x1000b, 3, 0x2, 0x50001);
	add_basicblock(p_integrated_CFG, 0x1000b, 3, 0x2, 0x1000c);
	add_basicblock(p_integrated_CFG, 0x1000c, 3, 0x2, 0x60001);
	add_basicblock(p_integrated_CFG, 0x1000c, 3, 0x2, 0x1000d);
	add_basicblock(p_integrated_CFG, 0x1000d, 1, 0x1, 0x1000e);
	add_basicblock(p_integrated_CFG, 0x1000e, 3, 0x2, 0x140001);
	add_basicblock(p_integrated_CFG, 0x1000e, 3, 0x2, 0x1000f);
	add_basicblock(p_integrated_CFG, 0x1000f, 1, 0x1, 0x10010);
	add_basicblock(p_integrated_CFG, 0x10010, 2, 0x2, 0x10011);
	add_basicblock(p_integrated_CFG, 0x10010, 2, 0x2, 0x10013);
	add_basicblock(p_integrated_CFG, 0x10011, 3, 0x2, 0x110001);
	add_basicblock(p_integrated_CFG, 0x10011, 3, 0x2, 0x10012);
	add_basicblock(p_integrated_CFG, 0x10012, 1, 0x1, 0x10010);
	add_basicblock(p_integrated_CFG, 0x10013, 3, 0x2, 0x120001);
	add_basicblock(p_integrated_CFG, 0x10013, 3, 0x2, 0x10014);
	add_basicblock(p_integrated_CFG, 0x10014, 3, 0x2, 0x70001);
	add_basicblock(p_integrated_CFG, 0x10014, 3, 0x2, 0x10015);
	add_basicblock(p_integrated_CFG, 0x10015, 1, 0x1, 0x10016);
	add_basicblock(p_integrated_CFG, 0x10016, 2, 0x2, 0x10017);
	add_basicblock(p_integrated_CFG, 0x10016, 2, 0x2, 0x1001e);
	add_basicblock(p_integrated_CFG, 0x10017, 3, 0x2, 0x130001);
	add_basicblock(p_integrated_CFG, 0x10017, 3, 0x2, 0x10018);
	add_basicblock(p_integrated_CFG, 0x10018, 2, 0x2, 0x10019);
	add_basicblock(p_integrated_CFG, 0x10018, 2, 0x2, 0x1001c);
	add_basicblock(p_integrated_CFG, 0x10019, 3, 0x2, 0xf0001);
	add_basicblock(p_integrated_CFG, 0x10019, 3, 0x2, 0x1001a);
	add_basicblock(p_integrated_CFG, 0x1001a, 1, 0x1, 0x1001b);
	add_basicblock(p_integrated_CFG, 0x1001b, 1, 0x1, 0x1001c);
	add_basicblock(p_integrated_CFG, 0x1001c, 1, 0x1, 0x1001d);
	add_basicblock(p_integrated_CFG, 0x1001d, 1, 0x1, 0x10016);
	add_basicblock(p_integrated_CFG, 0x1001e, 3, 0x2, 0x80001);
	add_basicblock(p_integrated_CFG, 0x1001e, 3, 0x2, 0x1001f);
	add_basicblock(p_integrated_CFG, 0x1001f, 1, 0x1, 0x1000a);
	add_basicblock(p_integrated_CFG, 0x10020, 2, 0x2, 0x10021);
	add_basicblock(p_integrated_CFG, 0x10020, 2, 0x2, 0x10022);
	add_basicblock(p_integrated_CFG, 0x10021, 1, 0x1, 0x10023);
	add_basicblock(p_integrated_CFG, 0x10022, 1, 0x1, 0x10023);
	add_basicblock(p_integrated_CFG, 0x10023, 1, 0x1, 0x10024);
	add_basicblock(p_integrated_CFG, 0x10024, 1, 0x1, 0x10025);
	add_basicblock(p_integrated_CFG, 0x10025, 1, 0x1, 0x10026);
	add_basicblock(p_integrated_CFG, 0x10026, 1, 0x1, 0x10027);
	add_basicblock(p_integrated_CFG, 0x10027, 1, 0x1, 0x10028);
	add_basicblock(p_integrated_CFG, 0x10028, 1, 0x1, 0x10029);
	add_basicblock(p_integrated_CFG, 0x10029, 4, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x10029, 4, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x50001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x50001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x60001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x60001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x70001, 1, 0x1, 0x70002);
	add_basicblock(p_integrated_CFG, 0x70002, 3, 0x2, 0xe0001);
	add_basicblock(p_integrated_CFG, 0x70002, 3, 0x2, 0x70003);
	add_basicblock(p_integrated_CFG, 0x70003, 2, 0x2, 0x70004);
	add_basicblock(p_integrated_CFG, 0x70003, 2, 0x2, 0x70006);
	add_basicblock(p_integrated_CFG, 0x70004, 3, 0x2, 0xf0001);
	add_basicblock(p_integrated_CFG, 0x70004, 3, 0x2, 0x70005);
	add_basicblock(p_integrated_CFG, 0x70005, 3, 0x2, 0x110001);
	add_basicblock(p_integrated_CFG, 0x70005, 3, 0x2, 0x70007);
	add_basicblock(p_integrated_CFG, 0x70006, 1, 0x1, 0x70007);
	add_basicblock(p_integrated_CFG, 0x70007, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x70007, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x80001, 1, 0x1, 0x80002);
	add_basicblock(p_integrated_CFG, 0x80002, 2, 0x2, 0x80003);
	add_basicblock(p_integrated_CFG, 0x80002, 2, 0x2, 0x80004);
	add_basicblock(p_integrated_CFG, 0x80003, 1, 0x1, 0x80004);
	add_basicblock(p_integrated_CFG, 0x80004, 1, 0x1, 0x80005);
	add_basicblock(p_integrated_CFG, 0x80005, 2, 0x2, 0x80002);
	add_basicblock(p_integrated_CFG, 0x80005, 2, 0x2, 0x80006);
	add_basicblock(p_integrated_CFG, 0x80006, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x80006, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xe0001, 2, 0x2, 0xe0002);
	add_basicblock(p_integrated_CFG, 0xe0001, 2, 0x2, 0xe0003);
	add_basicblock(p_integrated_CFG, 0xe0002, 1, 0x1, 0xe0003);
	add_basicblock(p_integrated_CFG, 0xe0003, 3, 0x2, 0x110001);
	add_basicblock(p_integrated_CFG, 0xe0003, 3, 0x2, 0xe0004);
	add_basicblock(p_integrated_CFG, 0xe0004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xe0004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xf0001, 3, 0x2, 0x100001);
	add_basicblock(p_integrated_CFG, 0xf0001, 3, 0x2, 0xf0002);
	add_basicblock(p_integrated_CFG, 0xf0002, 2, 0x2, 0xf0004);
	add_basicblock(p_integrated_CFG, 0xf0002, 2, 0x2, 0xf0003);
	add_basicblock(p_integrated_CFG, 0xf0003, 1, 0x1, 0xf0004);
	add_basicblock(p_integrated_CFG, 0xf0004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xf0004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x100001, 2, 0x2, 0x100002);
	add_basicblock(p_integrated_CFG, 0x100001, 2, 0x2, 0x100003);
	add_basicblock(p_integrated_CFG, 0x100002, 1, 0x1, 0x100004);
	add_basicblock(p_integrated_CFG, 0x100003, 1, 0x1, 0x100004);
	add_basicblock(p_integrated_CFG, 0x100004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x100004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x110001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x110001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x120001, 1, 0x1, 0x120002);
	add_basicblock(p_integrated_CFG, 0x120002, 2, 0x2, 0x120003);
	add_basicblock(p_integrated_CFG, 0x120002, 2, 0x2, 0x120005);
	add_basicblock(p_integrated_CFG, 0x120003, 1, 0x1, 0x120004);
	add_basicblock(p_integrated_CFG, 0x120004, 1, 0x1, 0x120002);
	add_basicblock(p_integrated_CFG, 0x120005, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x120005, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x130001, 2, 0x2, 0x130002);
	add_basicblock(p_integrated_CFG, 0x130001, 2, 0x2, 0x130003);
	add_basicblock(p_integrated_CFG, 0x130002, 1, 0x1, 0x130004);
	add_basicblock(p_integrated_CFG, 0x130003, 1, 0x1, 0x130004);
	add_basicblock(p_integrated_CFG, 0x130004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x130004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x140001, 1, 0x1, 0x140002);
	add_basicblock(p_integrated_CFG, 0x140002, 2, 0x2, 0x140003);
	add_basicblock(p_integrated_CFG, 0x140002, 2, 0x2, 0x140007);
	add_basicblock(p_integrated_CFG, 0x140003, 3, 0x2, 0x130001);
	add_basicblock(p_integrated_CFG, 0x140003, 3, 0x2, 0x140004);
	add_basicblock(p_integrated_CFG, 0x140004, 2, 0x2, 0x140005);
	add_basicblock(p_integrated_CFG, 0x140004, 2, 0x2, 0x140006);
	add_basicblock(p_integrated_CFG, 0x140005, 1, 0x1, 0x140006);
	add_basicblock(p_integrated_CFG, 0x140006, 1, 0x1, 0x140002);
	add_basicblock(p_integrated_CFG, 0x140007, 2, 0x2, 0x140008);
	add_basicblock(p_integrated_CFG, 0x140007, 2, 0x2, 0x14000a);
	add_basicblock(p_integrated_CFG, 0x140008, 2, 0x2, 0x140009);
	add_basicblock(p_integrated_CFG, 0x140008, 2, 0x2, 0x14000a);
	add_basicblock(p_integrated_CFG, 0x140009, 1, 0x1, 0x14000a);
	add_basicblock(p_integrated_CFG, 0x14000a, 2, 0x2, 0x14000b);
	add_basicblock(p_integrated_CFG, 0x14000a, 2, 0x2, 0x14000c);
	add_basicblock(p_integrated_CFG, 0x14000b, 1, 0x1, 0x140010);
	add_basicblock(p_integrated_CFG, 0x14000c, 1, 0x1, 0x14000d);
	add_basicblock(p_integrated_CFG, 0x14000d, 2, 0x2, 0x14000e);
	add_basicblock(p_integrated_CFG, 0x14000d, 2, 0x2, 0x14000f);
	add_basicblock(p_integrated_CFG, 0x14000e, 1, 0x1, 0x140010);
	add_basicblock(p_integrated_CFG, 0x14000f, 1, 0x1, 0x140010);
	add_basicblock(p_integrated_CFG, 0x140010, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x140010, 0, 0x2, 0x0);

	return;
}

INTEGRATED_CFG* generate_path_tree()
{
	p_integrated_CFG = (INTEGRATED_CFG* )malloc(sizeof(INTEGRATED_CFG));
#ifdef ACES_LIST
	init(p_integrated_CFG);
#endif

#ifdef ACES_AVLTREE
	init(p_integrated_CFG);
#endif

#ifdef ACES_HASH
	init(p_integrated_CFG, 100000);
#endif

	BBNode* p_bb_init = (BBNode*)malloc(sizeof(BBNode));
	p_bb_init->node_id = leverage_signature;
	p_bb_init->connectionType = 1;
	p_bb_init->connectionNum = 1;
	p_bb_init->connectionArr = (unsigned int*)malloc(sizeof(unsigned int) * p_bb_init->connectionNum);
	p_bb_init->connectionArr[0] = 0x10001;
#ifdef ACES_LIST
	insert(p_integrated_CFG, p_bb_init);
#endif

#ifdef ACES_AVLTREE
	p_integrated_CFG->root = insert(p_integrated_CFG->root, p_bb_init);
#endif

#ifdef ACES_HASH
	insert(p_integrated_CFG, p_bb_init);
#endif

	return p_integrated_CFG;
}
