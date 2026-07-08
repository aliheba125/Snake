.class public Landroidx/appcompat/view/menu/y9;
.super Landroidx/appcompat/view/menu/dm;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/x9;
.implements Landroidx/appcompat/view/menu/wh;
.implements Landroidx/appcompat/view/menu/m71;


# static fields
.field public static final r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _decisionAndIndex:I

.field private volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;

.field public final p:Landroidx/appcompat/view/menu/xg;

.field public final q:Landroidx/appcompat/view/menu/kh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_decisionAndIndex"

    const-class v1, Landroidx/appcompat/view/menu/y9;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/y9;->r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "_state"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/y9;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/y9;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/xg;I)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/appcompat/view/menu/dm;-><init>(I)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/y9;->p:Landroidx/appcompat/view/menu/xg;

    invoke-interface {p1}, Landroidx/appcompat/view/menu/xg;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/y9;->q:Landroidx/appcompat/view/menu/kh;

    const p1, 0x1fffffff

    iput p1, p0, Landroidx/appcompat/view/menu/y9;->_decisionAndIndex:I

    sget-object p1, Landroidx/appcompat/view/menu/z0;->m:Landroidx/appcompat/view/menu/z0;

    iput-object p1, p0, Landroidx/appcompat/view/menu/y9;->_state:Ljava/lang/Object;

    return-void
.end method

.method private final E()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/view/menu/dm;->o:I

    invoke-static {v0}, Landroidx/appcompat/view/menu/em;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/y9;->p:Landroidx/appcompat/view/menu/xg;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/view/menu/bm;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bm;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic M(Landroidx/appcompat/view/menu/y9;Ljava/lang/Object;ILandroidx/appcompat/view/menu/fw;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/y9;->L(Ljava/lang/Object;ILandroidx/appcompat/view/menu/fw;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resumeImpl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A()Landroidx/appcompat/view/menu/mm;
    .locals 7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/q60;->d:Landroidx/appcompat/view/menu/q60$b;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/kh;->d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/q60;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Landroidx/appcompat/view/menu/ib;

    invoke-direct {v4, p0}, Landroidx/appcompat/view/menu/ib;-><init>(Landroidx/appcompat/view/menu/y9;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/appcompat/view/menu/q60$a;->d(Landroidx/appcompat/view/menu/q60;ZZLandroidx/appcompat/view/menu/fw;ILjava/lang/Object;)Landroidx/appcompat/view/menu/mm;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/view/menu/y9;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v0, v1}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final B(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroidx/appcompat/view/menu/y9;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v3, v11, Landroidx/appcompat/view/menu/z0;

    if-eqz v3, :cond_1

    sget-object v3, Landroidx/appcompat/view/menu/y9;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, v0, v11, v1}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_1
    instance-of v3, v11, Landroidx/appcompat/view/menu/js0;

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1, v11}, Landroidx/appcompat/view/menu/y9;->F(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v3, v11, Landroidx/appcompat/view/menu/nd;

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    move-object v2, v11

    check-cast v2, Landroidx/appcompat/view/menu/nd;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/nd;->b()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0, v1, v11}, Landroidx/appcompat/view/menu/y9;->F(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    instance-of v5, v11, Landroidx/appcompat/view/menu/da;

    if-eqz v5, :cond_6

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_5

    iget-object v4, v2, Landroidx/appcompat/view/menu/nd;->a:Ljava/lang/Throwable;

    :cond_5
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>"

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/appcompat/view/menu/js0;

    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/view/menu/y9;->o(Landroidx/appcompat/view/menu/js0;Ljava/lang/Throwable;)V

    :cond_6
    return-void

    :cond_7
    instance-of v3, v11, Landroidx/appcompat/view/menu/ld;

    const-string v5, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler"

    if-eqz v3, :cond_a

    move-object v12, v11

    check-cast v12, Landroidx/appcompat/view/menu/ld;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v1, Landroidx/appcompat/view/menu/js0;

    if-eqz v3, :cond_8

    return-void

    :cond_8
    invoke-static {v1, v5}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    invoke-virtual {v12}, Landroidx/appcompat/view/menu/ld;->c()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    iget-object v1, v12, Landroidx/appcompat/view/menu/ld;->d:Ljava/lang/Throwable;

    invoke-virtual {v0, v4, v1}, Landroidx/appcompat/view/menu/y9;->l(Landroidx/appcompat/view/menu/t9;Ljava/lang/Throwable;)V

    return-void

    :cond_9
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1d

    const/16 v19, 0x0

    invoke-static/range {v12 .. v19}, Landroidx/appcompat/view/menu/ld;->b(Landroidx/appcompat/view/menu/ld;Ljava/lang/Object;Landroidx/appcompat/view/menu/t9;Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Landroidx/appcompat/view/menu/ld;

    move-result-object v3

    sget-object v4, Landroidx/appcompat/view/menu/y9;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, v0, v11, v3}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_a
    instance-of v3, v1, Landroidx/appcompat/view/menu/js0;

    if-eqz v3, :cond_b

    return-void

    :cond_b
    invoke-static {v1, v5}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    new-instance v12, Landroidx/appcompat/view/menu/ld;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v3, v12

    move-object v4, v11

    invoke-direct/range {v3 .. v10}, Landroidx/appcompat/view/menu/ld;-><init>(Ljava/lang/Object;Landroidx/appcompat/view/menu/t9;Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Ljava/lang/Throwable;ILandroidx/appcompat/view/menu/lj;)V

    sget-object v3, Landroidx/appcompat/view/menu/y9;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, v0, v11, v12}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void
.end method

.method public C()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->x()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/view/menu/cf0;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public D(Ljava/lang/Object;)V
    .locals 0

    iget p1, p0, Landroidx/appcompat/view/menu/dm;->o:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/y9;->t(I)V

    return-void
.end method

.method public final F(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public final H(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/y9;->q(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/y9;->p(Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->s()V

    return-void
.end method

.method public final I()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/y9;->p:Landroidx/appcompat/view/menu/xg;

    instance-of v1, v0, Landroidx/appcompat/view/menu/bm;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/view/menu/bm;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/bm;->r(Landroidx/appcompat/view/menu/x9;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->r()V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/y9;->p(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final J()Z
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/y9;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/appcompat/view/menu/ld;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/appcompat/view/menu/ld;

    iget-object v1, v1, Landroidx/appcompat/view/menu/ld;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->r()V

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v1, Landroidx/appcompat/view/menu/y9;->r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v2, 0x1fffffff

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    sget-object v1, Landroidx/appcompat/view/menu/z0;->m:Landroidx/appcompat/view/menu/z0;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public K(Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/dm;->o:I

    invoke-virtual {p0, p1, v0, p2}, Landroidx/appcompat/view/menu/y9;->L(Ljava/lang/Object;ILandroidx/appcompat/view/menu/fw;)V

    return-void
.end method

.method public final L(Ljava/lang/Object;ILandroidx/appcompat/view/menu/fw;)V
    .locals 9

    sget-object v0, Landroidx/appcompat/view/menu/y9;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/appcompat/view/menu/cf0;

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/view/menu/cf0;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Landroidx/appcompat/view/menu/y9;->N(Landroidx/appcompat/view/menu/cf0;Ljava/lang/Object;ILandroidx/appcompat/view/menu/fw;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/y9;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v2}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->s()V

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/y9;->t(I)V

    return-void

    :cond_1
    instance-of p2, v1, Landroidx/appcompat/view/menu/da;

    if-eqz p2, :cond_3

    check-cast v1, Landroidx/appcompat/view/menu/da;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/da;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    iget-object p1, v1, Landroidx/appcompat/view/menu/nd;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Landroidx/appcompat/view/menu/y9;->m(Landroidx/appcompat/view/menu/fw;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/y9;->k(Ljava/lang/Object;)Ljava/lang/Void;

    new-instance p1, Landroidx/appcompat/view/menu/d80;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/d80;-><init>()V

    throw p1
.end method

.method public final N(Landroidx/appcompat/view/menu/cf0;Ljava/lang/Object;ILandroidx/appcompat/view/menu/fw;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    instance-of p1, p2, Landroidx/appcompat/view/menu/nd;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Landroidx/appcompat/view/menu/em;->b(I)Z

    move-result p1

    if-nez p1, :cond_1

    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    if-eqz p5, :cond_3

    :cond_2
    new-instance p1, Landroidx/appcompat/view/menu/ld;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v7}, Landroidx/appcompat/view/menu/ld;-><init>(Ljava/lang/Object;Landroidx/appcompat/view/menu/t9;Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Ljava/lang/Throwable;ILandroidx/appcompat/view/menu/lj;)V

    move-object p2, p1

    :cond_3
    :goto_0
    return-object p2
.end method

.method public final O()Z
    .locals 6

    sget-object v0, Landroidx/appcompat/view/menu/y9;->r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v2, Landroidx/appcompat/view/menu/y9;->r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v4, 0x1fffffff

    and-int/2addr v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    add-int/2addr v5, v4

    invoke-virtual {v2, p0, v1, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3
.end method

.method public final P(Ljava/lang/Object;Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;)Landroidx/appcompat/view/menu/my0;
    .locals 9

    sget-object v0, Landroidx/appcompat/view/menu/y9;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/appcompat/view/menu/cf0;

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/view/menu/cf0;

    iget v6, p0, Landroidx/appcompat/view/menu/dm;->o:I

    move-object v3, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/appcompat/view/menu/y9;->N(Landroidx/appcompat/view/menu/cf0;Ljava/lang/Object;ILandroidx/appcompat/view/menu/fw;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/y9;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v2}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->s()V

    sget-object p1, Landroidx/appcompat/view/menu/z9;->a:Landroidx/appcompat/view/menu/my0;

    return-object p1

    :cond_1
    instance-of p1, v1, Landroidx/appcompat/view/menu/ld;

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    check-cast v1, Landroidx/appcompat/view/menu/ld;

    iget-object p1, v1, Landroidx/appcompat/view/menu/ld;->c:Ljava/lang/Object;

    if-ne p1, p2, :cond_2

    sget-object p3, Landroidx/appcompat/view/menu/z9;->a:Landroidx/appcompat/view/menu/my0;

    :cond_2
    return-object p3
.end method

.method public final Q()Z
    .locals 5

    sget-object v0, Landroidx/appcompat/view/menu/y9;->r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v2, Landroidx/appcompat/view/menu/y9;->r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v3, 0x1fffffff

    and-int/2addr v3, v1

    const/high16 v4, 0x20000000

    add-int/2addr v4, v3

    invoke-virtual {v2, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroidx/appcompat/view/menu/js0;I)V
    .locals 4

    sget-object v0, Landroidx/appcompat/view/menu/y9;->r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x1fffffff

    and-int v3, v1, v2

    if-ne v3, v2, :cond_1

    shr-int/lit8 v2, v1, 0x1d

    shl-int/lit8 v2, v2, 0x1d

    add-int/2addr v2, p2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/y9;->B(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invokeOnCancellation should be called at most once"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Landroidx/appcompat/view/menu/kh;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y9;->q:Landroidx/appcompat/view/menu/kh;

    return-object v0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Landroidx/appcompat/view/menu/y9;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v2, v10, Landroidx/appcompat/view/menu/cf0;

    if-nez v2, :cond_4

    instance-of v2, v10, Landroidx/appcompat/view/menu/nd;

    if-eqz v2, :cond_1

    return-void

    :cond_1
    instance-of v2, v10, Landroidx/appcompat/view/menu/ld;

    if-eqz v2, :cond_3

    move-object v2, v10

    check-cast v2, Landroidx/appcompat/view/menu/ld;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ld;->c()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0xf

    const/16 v18, 0x0

    move-object v11, v2

    move-object/from16 v16, p2

    invoke-static/range {v11 .. v18}, Landroidx/appcompat/view/menu/ld;->b(Landroidx/appcompat/view/menu/ld;Ljava/lang/Object;Landroidx/appcompat/view/menu/t9;Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Landroidx/appcompat/view/menu/ld;

    move-result-object v3

    sget-object v4, Landroidx/appcompat/view/menu/y9;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, v0, v10, v3}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v11, p2

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0, v11}, Landroidx/appcompat/view/menu/ld;->d(Landroidx/appcompat/view/menu/y9;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must be called at most once"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object/from16 v11, p2

    sget-object v12, Landroidx/appcompat/view/menu/y9;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v13, Landroidx/appcompat/view/menu/ld;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    move-object v2, v13

    move-object v3, v10

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v9}, Landroidx/appcompat/view/menu/ld;-><init>(Ljava/lang/Object;Landroidx/appcompat/view/menu/t9;Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Ljava/lang/Throwable;ILandroidx/appcompat/view/menu/lj;)V

    invoke-static {v12, v0, v10, v13}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not completed"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final d()Landroidx/appcompat/view/menu/xg;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/y9;->p:Landroidx/appcompat/view/menu/xg;

    return-object v0
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/dm;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/y9;->P(Ljava/lang/Object;Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;)Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    return-object p1
.end method

.method public g()Landroidx/appcompat/view/menu/wh;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/y9;->p:Landroidx/appcompat/view/menu/xg;

    instance-of v1, v0, Landroidx/appcompat/view/menu/wh;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/view/menu/wh;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Landroidx/appcompat/view/menu/ld;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/appcompat/view/menu/ld;

    iget-object p1, p1, Landroidx/appcompat/view/menu/ld;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public j()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->x()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already resumed, but proposed with update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l(Landroidx/appcompat/view/menu/t9;Ljava/lang/Throwable;)V
    .locals 3

    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object p2

    new-instance v0, Landroidx/appcompat/view/menu/qd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/qd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/rh;->a(Landroidx/appcompat/view/menu/kh;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final m(Landroidx/appcompat/view/menu/fw;Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    invoke-interface {p1, p2}, Landroidx/appcompat/view/menu/fw;->i(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object p2

    new-instance v0, Landroidx/appcompat/view/menu/qd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in resume onCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/qd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/rh;->a(Landroidx/appcompat/view/menu/kh;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public n(Ljava/lang/Object;)V
    .locals 6

    invoke-static {p1, p0}, Landroidx/appcompat/view/menu/rd;->b(Ljava/lang/Object;Landroidx/appcompat/view/menu/x9;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/view/menu/dm;->o:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/appcompat/view/menu/y9;->M(Landroidx/appcompat/view/menu/y9;Ljava/lang/Object;ILandroidx/appcompat/view/menu/fw;ILjava/lang/Object;)V

    return-void
.end method

.method public final o(Landroidx/appcompat/view/menu/js0;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/y9;->r:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Landroidx/appcompat/view/menu/js0;->o(ILjava/lang/Throwable;Landroidx/appcompat/view/menu/kh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object p2

    new-instance v0, Landroidx/appcompat/view/menu/qd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/qd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/rh;->a(Landroidx/appcompat/view/menu/kh;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The index for Segment.onCancellation(..) is broken"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(Ljava/lang/Throwable;)Z
    .locals 4

    sget-object v0, Landroidx/appcompat/view/menu/y9;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/appcompat/view/menu/cf0;

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance v2, Landroidx/appcompat/view/menu/da;

    instance-of v3, v1, Landroidx/appcompat/view/menu/js0;

    invoke-direct {v2, p0, p1, v3}, Landroidx/appcompat/view/menu/da;-><init>(Landroidx/appcompat/view/menu/xg;Ljava/lang/Throwable;Z)V

    sget-object v3, Landroidx/appcompat/view/menu/y9;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v2}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroidx/appcompat/view/menu/cf0;

    instance-of v0, v0, Landroidx/appcompat/view/menu/js0;

    if-eqz v0, :cond_2

    check-cast v1, Landroidx/appcompat/view/menu/js0;

    invoke-virtual {p0, v1, p1}, Landroidx/appcompat/view/menu/y9;->o(Landroidx/appcompat/view/menu/js0;Ljava/lang/Throwable;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->s()V

    iget p1, p0, Landroidx/appcompat/view/menu/dm;->o:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/y9;->t(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final q(Ljava/lang/Throwable;)Z
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/view/menu/y9;->E()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/y9;->p:Landroidx/appcompat/view/menu/xg;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/view/menu/bm;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/bm;->p(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final r()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->v()Landroidx/appcompat/view/menu/mm;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroidx/appcompat/view/menu/mm;->a()V

    sget-object v0, Landroidx/appcompat/view/menu/y9;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Landroidx/appcompat/view/menu/af0;->m:Landroidx/appcompat/view/menu/af0;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final s()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/y9;->E()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->r()V

    :cond_0
    return-void
.end method

.method public final t(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/em;->a(Landroidx/appcompat/view/menu/dm;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/y9;->p:Landroidx/appcompat/view/menu/xg;

    invoke-static {v1}, Landroidx/appcompat/view/menu/hj;->c(Landroidx/appcompat/view/menu/xg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/appcompat/view/menu/hj;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroidx/appcompat/view/menu/q60;)Ljava/lang/Throwable;
    .locals 0

    invoke-interface {p1}, Landroidx/appcompat/view/menu/q60;->w()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public final v()Landroidx/appcompat/view/menu/mm;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/y9;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/mm;

    return-object v0
.end method

.method public final w()Ljava/lang/Object;
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/view/menu/y9;->E()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->Q()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->v()Landroidx/appcompat/view/menu/mm;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->A()Landroidx/appcompat/view/menu/mm;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->I()V

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->I()V

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->x()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/nd;

    if-nez v1, :cond_6

    iget v1, p0, Landroidx/appcompat/view/menu/dm;->o:I

    invoke-static {v1}, Landroidx/appcompat/view/menu/em;->b(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/view/menu/q60;->d:Landroidx/appcompat/view/menu/q60$b;

    invoke-interface {v1, v2}, Landroidx/appcompat/view/menu/kh;->d(Landroidx/appcompat/view/menu/kh$c;)Landroidx/appcompat/view/menu/kh$b;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/q60;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroidx/appcompat/view/menu/q60;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Landroidx/appcompat/view/menu/q60;->w()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/y9;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/y9;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    check-cast v0, Landroidx/appcompat/view/menu/nd;

    iget-object v0, v0, Landroidx/appcompat/view/menu/nd;->a:Ljava/lang/Throwable;

    throw v0
.end method

.method public final x()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/y9;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->x()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/cf0;

    if-eqz v1, :cond_0

    const-string v0, "Active"

    goto :goto_0

    :cond_0
    instance-of v0, v0, Landroidx/appcompat/view/menu/da;

    if-eqz v0, :cond_1

    const-string v0, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v0, "Completed"

    :goto_0
    return-object v0
.end method

.method public z()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->A()Landroidx/appcompat/view/menu/mm;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y9;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroidx/appcompat/view/menu/mm;->a()V

    sget-object v0, Landroidx/appcompat/view/menu/y9;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Landroidx/appcompat/view/menu/af0;->m:Landroidx/appcompat/view/menu/af0;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
