.class public Landroidx/appcompat/view/menu/v8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/sa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/v8$a;
    }
.end annotation


# static fields
.field public static final p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final s:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final x:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _closeCause:Ljava/lang/Object;

.field private volatile bufferEnd:J

.field private volatile bufferEndSegment:Ljava/lang/Object;

.field private volatile closeHandler:Ljava/lang/Object;

.field private volatile completedExpandBuffersAndPauseFlag:J

.field public final m:I

.field public final n:Landroidx/appcompat/view/menu/fw;

.field public final o:Landroidx/appcompat/view/menu/vw;

.field private volatile receiveSegment:Ljava/lang/Object;

.field private volatile receivers:J

.field private volatile sendSegment:Ljava/lang/Object;

.field private volatile sendersAndCloseStatus:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "sendersAndCloseStatus"

    const-class v1, Landroidx/appcompat/view/menu/v8;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/v8;->p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "receivers"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/v8;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "bufferEnd"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/v8;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "completedExpandBuffersAndPauseFlag"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/v8;->s:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "sendSegment"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/v8;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "receiveSegment"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/v8;->u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "bufferEndSegment"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/v8;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_closeCause"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/v8;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "closeHandler"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/v8;->x:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILandroidx/appcompat/view/menu/fw;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/appcompat/view/menu/v8;->m:I

    iput-object p2, p0, Landroidx/appcompat/view/menu/v8;->n:Landroidx/appcompat/view/menu/fw;

    if-ltz p1, :cond_2

    invoke-static {p1}, Landroidx/appcompat/view/menu/w8;->t(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/v8;->bufferEnd:J

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->G()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/v8;->completedExpandBuffersAndPauseFlag:J

    new-instance p1, Landroidx/appcompat/view/menu/db;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/view/menu/db;-><init>(JLandroidx/appcompat/view/menu/db;Landroidx/appcompat/view/menu/v8;I)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/v8;->sendSegment:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/appcompat/view/menu/v8;->receiveSegment:Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->n()Landroidx/appcompat/view/menu/db;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/v8;->bufferEndSegment:Ljava/lang/Object;

    if-eqz p2, :cond_1

    new-instance p1, Landroidx/appcompat/view/menu/v8$b;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/v8$b;-><init>(Landroidx/appcompat/view/menu/v8;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/v8;->o:Landroidx/appcompat/view/menu/vw;

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->l()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/v8;->_closeCause:Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid channel capacity: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", should be >=0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic O(Landroidx/appcompat/view/menu/v8;JILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/v8;->N(J)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic a(Landroidx/appcompat/view/menu/v8;JLandroidx/appcompat/view/menu/db;)Landroidx/appcompat/view/menu/db;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/v8;->E(JLandroidx/appcompat/view/menu/db;)Landroidx/appcompat/view/menu/db;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Landroidx/appcompat/view/menu/v8;JLandroidx/appcompat/view/menu/db;)Landroidx/appcompat/view/menu/db;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/v8;->F(JLandroidx/appcompat/view/menu/db;)Landroidx/appcompat/view/menu/db;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Landroidx/appcompat/view/menu/v8;)Ljava/lang/Throwable;
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->I()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/v8;->u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method public static final synthetic f()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/v8;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method public static final synthetic g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/v8;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method public static final synthetic h()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/v8;->p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method public static final synthetic i(Landroidx/appcompat/view/menu/v8;J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/v8;->U(J)Z

    move-result p0

    return p0
.end method

.method public static final synthetic j(Landroidx/appcompat/view/menu/v8;Ljava/lang/Object;Landroidx/appcompat/view/menu/x9;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/v8;->e0(Ljava/lang/Object;Landroidx/appcompat/view/menu/x9;)V

    return-void
.end method

.method public static final synthetic l(Landroidx/appcompat/view/menu/v8;Landroidx/appcompat/view/menu/m71;Landroidx/appcompat/view/menu/db;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/v8;->h0(Landroidx/appcompat/view/menu/m71;Landroidx/appcompat/view/menu/db;I)V

    return-void
.end method

.method public static final synthetic m(Landroidx/appcompat/view/menu/v8;Landroidx/appcompat/view/menu/m71;Landroidx/appcompat/view/menu/db;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/v8;->i0(Landroidx/appcompat/view/menu/m71;Landroidx/appcompat/view/menu/db;I)V

    return-void
.end method

.method public static final synthetic n(Landroidx/appcompat/view/menu/v8;Landroidx/appcompat/view/menu/db;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroidx/appcompat/view/menu/v8;->u0(Landroidx/appcompat/view/menu/db;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n0(Landroidx/appcompat/view/menu/v8;Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 15

    move-object v8, p0

    const/4 v9, 0x0

    invoke-static {}, Landroidx/appcompat/view/menu/v8;->g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/db;

    :cond_0
    :goto_0
    invoke-static {}, Landroidx/appcompat/view/menu/v8;->h()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long v10, v1, v3

    invoke-static {p0, v1, v2}, Landroidx/appcompat/view/menu/v8;->i(Landroidx/appcompat/view/menu/v8;J)Z

    move-result v12

    sget v1, Landroidx/appcompat/view/menu/w8;->b:I

    int-to-long v2, v1

    div-long v2, v10, v2

    int-to-long v4, v1

    rem-long v4, v10, v4

    long-to-int v13, v4

    iget-wide v4, v0, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    invoke-static {p0, v2, v3, v0}, Landroidx/appcompat/view/menu/v8;->b(Landroidx/appcompat/view/menu/v8;JLandroidx/appcompat/view/menu/db;)Landroidx/appcompat/view/menu/db;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v12, :cond_0

    invoke-virtual/range {p0 .. p2}, Landroidx/appcompat/view/menu/v8;->d0(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_9

    return-object v0

    :cond_1
    move-object v14, v1

    goto :goto_1

    :cond_2
    move-object v14, v0

    :goto_1
    move-object v0, p0

    move-object v1, v14

    move v2, v13

    move-object/from16 v3, p1

    move-wide v4, v10

    move-object v6, v9

    move v7, v12

    invoke-static/range {v0 .. v7}, Landroidx/appcompat/view/menu/v8;->o(Landroidx/appcompat/view/menu/v8;Landroidx/appcompat/view/menu/db;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/ze;->b()V

    :goto_2
    move-object v0, v14

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->J()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_5

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/ze;->b()V

    :cond_5
    invoke-virtual/range {p0 .. p2}, Landroidx/appcompat/view/menu/v8;->d0(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_9

    return-object v0

    :cond_6
    move-object v0, p0

    move-object v1, v14

    move v2, v13

    move-object/from16 v3, p1

    move-wide v4, v10

    move-object/from16 v6, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/view/menu/v8;->o0(Landroidx/appcompat/view/menu/db;ILjava/lang/Object;JLandroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_9

    return-object v0

    :cond_7
    if-eqz v12, :cond_9

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/js0;->p()V

    invoke-virtual/range {p0 .. p2}, Landroidx/appcompat/view/menu/v8;->d0(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_9

    return-object v0

    :cond_8
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/ze;->b()V

    :cond_9
    sget-object v0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object v0
.end method

.method public static final synthetic o(Landroidx/appcompat/view/menu/v8;Landroidx/appcompat/view/menu/db;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 0

    invoke-virtual/range {p0 .. p7}, Landroidx/appcompat/view/menu/v8;->w0(Landroidx/appcompat/view/menu/db;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result p0

    return p0
.end method


# virtual methods
.method public A()Z
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/v8;->p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/v8;->U(J)Z

    move-result v0

    return v0
.end method

.method public final A0(J)V
    .locals 13

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->G()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->g()I

    move-result p1

    const/4 v0, 0x0

    move p2, v0

    :goto_0
    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    if-ge p2, p1, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->G()J

    move-result-wide v3

    sget-object v5, Landroidx/appcompat/view/menu/v8;->s:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    and-long/2addr v1, v5

    cmp-long v1, v3, v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->G()J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    sget-object v9, Landroidx/appcompat/view/menu/v8;->s:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_3
    invoke-virtual {v9, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    and-long p1, v5, v1

    const/4 v10, 0x1

    invoke-static {p1, p2, v10}, Landroidx/appcompat/view/menu/w8;->a(JZ)J

    move-result-wide v7

    move-object v3, v9

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->G()J

    move-result-wide p1

    sget-object v9, Landroidx/appcompat/view/menu/v8;->s:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v9, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    and-long v3, v5, v1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    and-long/2addr v7, v5

    const-wide/16 v11, 0x0

    cmp-long v7, v7, v11

    if-eqz v7, :cond_5

    move v7, v10

    goto :goto_2

    :cond_5
    move v7, v0

    :goto_2
    cmp-long v8, p1, v3

    if-nez v8, :cond_7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->G()J

    move-result-wide v11

    cmp-long p1, p1, v11

    if-nez p1, :cond_7

    :cond_6
    invoke-virtual {v9, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    and-long p1, v5, v1

    invoke-static {p1, p2, v0}, Landroidx/appcompat/view/menu/w8;->a(JZ)J

    move-result-wide v7

    move-object v3, v9

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_7
    if-nez v7, :cond_4

    invoke-static {v3, v4, v10}, Landroidx/appcompat/view/menu/w8;->a(JZ)J

    move-result-wide v7

    move-object v3, v9

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    goto :goto_1
.end method

.method public final B(J)V
    .locals 10

    sget-object v0, Landroidx/appcompat/view/menu/v8;->u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/db;

    :cond_0
    :goto_0
    sget-object v1, Landroidx/appcompat/view/menu/v8;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v8

    iget v2, p0, Landroidx/appcompat/view/menu/v8;->m:I

    int-to-long v2, v2

    add-long/2addr v2, v8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->G()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long v5, v8, v2

    move-object v2, p0

    move-wide v3, v8

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroidx/appcompat/view/menu/w8;->b:I

    int-to-long v2, v1

    div-long v2, v8, v2

    int-to-long v4, v1

    rem-long v4, v8, v4

    long-to-int v4, v4

    iget-wide v5, v0, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long v1, v5, v2

    if-eqz v1, :cond_3

    invoke-virtual {p0, v2, v3, v0}, Landroidx/appcompat/view/menu/v8;->E(JLandroidx/appcompat/view/menu/db;)Landroidx/appcompat/view/menu/db;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :cond_3
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move-wide v5, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/view/menu/v8;->u0(Landroidx/appcompat/view/menu/db;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->h()Landroidx/appcompat/view/menu/my0;

    move-result-object v2

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->L()J

    move-result-wide v1

    cmp-long v1, v8, v1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ze;->b()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ze;->b()V

    iget-object v2, p0, Landroidx/appcompat/view/menu/v8;->n:Landroidx/appcompat/view/menu/fw;

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3, v4}, Landroidx/appcompat/view/menu/ng0;->d(Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Landroidx/appcompat/view/menu/k31;ILjava/lang/Object;)Landroidx/appcompat/view/menu/k31;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    throw v1
.end method

.method public final C()V
    .locals 14

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/v8;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/db;

    :goto_0
    sget-object v1, Landroidx/appcompat/view/menu/v8;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v7

    sget v9, Landroidx/appcompat/view/menu/w8;->b:I

    int-to-long v1, v9

    div-long v2, v7, v1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->L()J

    move-result-wide v4

    cmp-long v1, v4, v7

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    if-gtz v1, :cond_2

    iget-wide v4, v0, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ze;->e()Landroidx/appcompat/view/menu/ze;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2, v3, v0}, Landroidx/appcompat/view/menu/v8;->b0(JLandroidx/appcompat/view/menu/db;)V

    :cond_1
    invoke-static {p0, v12, v13, v11, v10}, Landroidx/appcompat/view/menu/v8;->O(Landroidx/appcompat/view/menu/v8;JILjava/lang/Object;)V

    return-void

    :cond_2
    iget-wide v4, v0, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    move-object v1, p0

    move-object v4, v0

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/view/menu/v8;->D(JLandroidx/appcompat/view/menu/db;J)Landroidx/appcompat/view/menu/db;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v1

    :cond_4
    int-to-long v1, v9

    rem-long v1, v7, v1

    long-to-int v1, v1

    invoke-virtual {p0, v0, v1, v7, v8}, Landroidx/appcompat/view/menu/v8;->s0(Landroidx/appcompat/view/menu/db;IJ)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0, v12, v13, v11, v10}, Landroidx/appcompat/view/menu/v8;->O(Landroidx/appcompat/view/menu/v8;JILjava/lang/Object;)V

    return-void

    :cond_5
    invoke-static {p0, v12, v13, v11, v10}, Landroidx/appcompat/view/menu/v8;->O(Landroidx/appcompat/view/menu/v8;JILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final D(JLandroidx/appcompat/view/menu/db;J)Landroidx/appcompat/view/menu/db;
    .locals 15

    move-object v6, p0

    move-wide/from16 v0, p1

    sget-object v2, Landroidx/appcompat/view/menu/v8;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->y()Landroidx/appcompat/view/menu/n70;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/tw;

    move-object/from16 v4, p3

    :goto_0
    invoke-static {v4, v0, v1, v3}, Landroidx/appcompat/view/menu/ye;->c(Landroidx/appcompat/view/menu/js0;JLandroidx/appcompat/view/menu/tw;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroidx/appcompat/view/menu/ks0;->c(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v5}, Landroidx/appcompat/view/menu/ks0;->b(Ljava/lang/Object;)Landroidx/appcompat/view/menu/js0;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/js0;

    iget-wide v9, v8, Landroidx/appcompat/view/menu/js0;->o:J

    iget-wide v11, v7, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/js0;->q()Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2, p0, v8, v7}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/js0;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/ze;->k()V

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/js0;->m()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/ze;->k()V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-static {v5}, Landroidx/appcompat/view/menu/ks0;->c(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->z()V

    invoke-virtual/range {p0 .. p3}, Landroidx/appcompat/view/menu/v8;->b0(JLandroidx/appcompat/view/menu/db;)V

    invoke-static {p0, v8, v9, v7, v10}, Landroidx/appcompat/view/menu/v8;->O(Landroidx/appcompat/view/menu/v8;JILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-static {v5}, Landroidx/appcompat/view/menu/ks0;->b(Ljava/lang/Object;)Landroidx/appcompat/view/menu/js0;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/appcompat/view/menu/db;

    iget-wide v2, v11, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_7

    sget-object v0, Landroidx/appcompat/view/menu/v8;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v4, 0x1

    add-long v4, p4, v4

    sget v12, Landroidx/appcompat/view/menu/w8;->b:I

    int-to-long v13, v12

    mul-long/2addr v13, v2

    move-object v1, p0

    move-wide v2, v4

    move-wide v4, v13

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, v11, Landroidx/appcompat/view/menu/js0;->o:J

    int-to-long v2, v12

    mul-long/2addr v0, v2

    sub-long v0, v0, p4

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/v8;->N(J)V

    goto :goto_3

    :cond_6
    invoke-static {p0, v8, v9, v7, v10}, Landroidx/appcompat/view/menu/v8;->O(Landroidx/appcompat/view/menu/v8;JILjava/lang/Object;)V

    goto :goto_3

    :cond_7
    move-object v10, v11

    :goto_3
    return-object v10
.end method

.method public final E(JLandroidx/appcompat/view/menu/db;)Landroidx/appcompat/view/menu/db;
    .locals 9

    sget-object v0, Landroidx/appcompat/view/menu/v8;->u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->y()Landroidx/appcompat/view/menu/n70;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/tw;

    :goto_0
    invoke-static {p3, p1, p2, v1}, Landroidx/appcompat/view/menu/ye;->c(Landroidx/appcompat/view/menu/js0;JLandroidx/appcompat/view/menu/tw;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/ks0;->c(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Landroidx/appcompat/view/menu/ks0;->b(Ljava/lang/Object;)Landroidx/appcompat/view/menu/js0;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/js0;

    iget-wide v5, v4, Landroidx/appcompat/view/menu/js0;->o:J

    iget-wide v7, v3, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/js0;->q()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, p0, v4, v3}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/js0;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ze;->k()V

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/js0;->m()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ze;->k()V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-static {v2}, Landroidx/appcompat/view/menu/ks0;->c(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->z()V

    iget-wide p1, p3, Landroidx/appcompat/view/menu/js0;->o:J

    sget v0, Landroidx/appcompat/view/menu/w8;->b:I

    int-to-long v2, v0

    mul-long/2addr p1, v2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->L()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-gez p1, :cond_a

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/ze;->b()V

    goto :goto_5

    :cond_5
    invoke-static {v2}, Landroidx/appcompat/view/menu/ks0;->b(Ljava/lang/Object;)Landroidx/appcompat/view/menu/js0;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/view/menu/db;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->W()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->G()J

    move-result-wide v2

    sget v0, Landroidx/appcompat/view/menu/w8;->b:I

    int-to-long v4, v0

    div-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gtz v0, :cond_8

    sget-object v0, Landroidx/appcompat/view/menu/v8;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_6
    :goto_3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/js0;

    iget-wide v3, v2, Landroidx/appcompat/view/menu/js0;->o:J

    iget-wide v5, p3, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_8

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/js0;->q()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v0, p0, v2, p3}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/js0;->m()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ze;->k()V

    goto :goto_4

    :cond_7
    invoke-virtual {p3}, Landroidx/appcompat/view/menu/js0;->m()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/ze;->k()V

    goto :goto_3

    :cond_8
    :goto_4
    iget-wide v2, p3, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long p1, v2, p1

    if-lez p1, :cond_9

    sget p1, Landroidx/appcompat/view/menu/w8;->b:I

    int-to-long v4, p1

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/view/menu/v8;->y0(J)V

    iget-wide v2, p3, Landroidx/appcompat/view/menu/js0;->o:J

    int-to-long p1, p1

    mul-long/2addr v2, p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->L()J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-gez p1, :cond_a

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/ze;->b()V

    goto :goto_5

    :cond_9
    move-object v1, p3

    :cond_a
    :goto_5
    return-object v1
.end method

.method public final F(JLandroidx/appcompat/view/menu/db;)Landroidx/appcompat/view/menu/db;
    .locals 9

    sget-object v0, Landroidx/appcompat/view/menu/v8;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->y()Landroidx/appcompat/view/menu/n70;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/tw;

    :goto_0
    invoke-static {p3, p1, p2, v1}, Landroidx/appcompat/view/menu/ye;->c(Landroidx/appcompat/view/menu/js0;JLandroidx/appcompat/view/menu/tw;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/ks0;->c(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Landroidx/appcompat/view/menu/ks0;->b(Ljava/lang/Object;)Landroidx/appcompat/view/menu/js0;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/js0;

    iget-wide v5, v4, Landroidx/appcompat/view/menu/js0;->o:J

    iget-wide v7, v3, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/js0;->q()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, p0, v4, v3}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/js0;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ze;->k()V

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/js0;->m()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ze;->k()V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-static {v2}, Landroidx/appcompat/view/menu/ks0;->c(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->z()V

    iget-wide p1, p3, Landroidx/appcompat/view/menu/js0;->o:J

    sget v0, Landroidx/appcompat/view/menu/w8;->b:I

    int-to-long v2, v0

    mul-long/2addr p1, v2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->J()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-gez p1, :cond_7

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/ze;->b()V

    goto :goto_3

    :cond_5
    invoke-static {v2}, Landroidx/appcompat/view/menu/ks0;->b(Ljava/lang/Object;)Landroidx/appcompat/view/menu/js0;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/view/menu/db;

    iget-wide v2, p3, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long p1, v2, p1

    if-lez p1, :cond_6

    sget p1, Landroidx/appcompat/view/menu/w8;->b:I

    int-to-long v4, p1

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/view/menu/v8;->z0(J)V

    iget-wide v2, p3, Landroidx/appcompat/view/menu/js0;->o:J

    int-to-long p1, p1

    mul-long/2addr v2, p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->J()J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-gez p1, :cond_7

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/ze;->b()V

    goto :goto_3

    :cond_6
    move-object v1, p3

    :cond_7
    :goto_3
    return-object v1
.end method

.method public final G()J
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/v8;->r:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final H()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/v8;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public final I()Ljava/lang/Throwable;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->H()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/hc;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/hc;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final J()J
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/v8;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final K()Ljava/lang/Throwable;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->H()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/ic;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/ic;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final L()J
    .locals 4

    sget-object v0, Landroidx/appcompat/view/menu/v8;->p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide v2, 0xfffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final M()Z
    .locals 10

    :cond_0
    :goto_0
    sget-object v0, Landroidx/appcompat/view/menu/v8;->u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/db;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->J()J

    move-result-wide v4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->L()J

    move-result-wide v2

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gtz v2, :cond_1

    return v3

    :cond_1
    sget v2, Landroidx/appcompat/view/menu/w8;->b:I

    int-to-long v6, v2

    div-long v6, v4, v6

    iget-wide v8, v1, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_2

    invoke-virtual {p0, v6, v7, v1}, Landroidx/appcompat/view/menu/v8;->E(JLandroidx/appcompat/view/menu/db;)Landroidx/appcompat/view/menu/db;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/db;

    iget-wide v0, v0, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_0

    return v3

    :cond_2
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ze;->b()V

    int-to-long v2, v2

    rem-long v2, v4, v2

    long-to-int v0, v2

    invoke-virtual {p0, v1, v0, v4, v5}, Landroidx/appcompat/view/menu/v8;->Q(Landroidx/appcompat/view/menu/db;IJ)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    sget-object v2, Landroidx/appcompat/view/menu/v8;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v0, 0x1

    add-long v6, v4, v0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    goto :goto_0
.end method

.method public final N(J)V
    .locals 4

    sget-object v0, Landroidx/appcompat/view/menu/v8;->s:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    and-long/2addr p1, v0

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_0

    :goto_0
    sget-object p1, Landroidx/appcompat/view/menu/v8;->s:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide p1

    and-long/2addr p1, v0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final P()V
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/v8;->x:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->d()Landroidx/appcompat/view/menu/my0;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->e()Landroidx/appcompat/view/menu/my0;

    move-result-object v2

    :goto_0
    invoke-static {v0, p0, v1, v2}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/q21;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/fw;

    check-cast v1, Landroidx/appcompat/view/menu/fw;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->H()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/appcompat/view/menu/fw;->i(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final Q(Landroidx/appcompat/view/menu/db;IJ)Z
    .locals 4

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/db;->w(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->k()Landroidx/appcompat/view/menu/my0;

    move-result-object v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Landroidx/appcompat/view/menu/w8;->d:Landroidx/appcompat/view/menu/my0;

    const/4 p2, 0x1

    if-ne v0, p1, :cond_2

    return p2

    :cond_2
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->j()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    if-ne v0, p1, :cond_3

    return v1

    :cond_3
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->z()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    if-ne v0, p1, :cond_4

    return v1

    :cond_4
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->f()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    if-ne v0, p1, :cond_5

    return v1

    :cond_5
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->o()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    if-ne v0, p1, :cond_6

    return v1

    :cond_6
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->p()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    if-ne v0, p1, :cond_7

    return p2

    :cond_7
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->q()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    if-ne v0, p1, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->J()J

    move-result-wide v2

    cmp-long p1, p3, v2

    if-nez p1, :cond_9

    move v1, p2

    :cond_9
    return v1

    :cond_a
    :goto_0
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->o()Landroidx/appcompat/view/menu/my0;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->C()V

    return v1
.end method

.method public final R(JZ)Z
    .locals 6

    const/16 v0, 0x3c

    shr-long v0, p1, v0

    long-to-int v0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    const-wide v4, 0xfffffffffffffffL

    if-eq v0, v3, :cond_2

    const/4 p3, 0x3

    if-ne v0, p3, :cond_1

    and-long/2addr p1, v4

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/v8;->w(J)V

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unexpected close status: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    and-long/2addr p1, v4

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/v8;->x(J)Landroidx/appcompat/view/menu/db;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->M()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public S()Z
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/v8;->p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/v8;->T(J)Z

    move-result v0

    return v0
.end method

.method public final T(J)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/v8;->R(JZ)Z

    move-result p1

    return p1
.end method

.method public final U(J)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/v8;->R(JZ)Z

    move-result p1

    return p1
.end method

.method public V()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final W()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->G()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final X(Landroidx/appcompat/view/menu/db;)J
    .locals 7

    :cond_0
    sget v0, Landroidx/appcompat/view/menu/w8;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const-wide/16 v1, -0x1

    const/4 v3, -0x1

    if-ge v3, v0, :cond_5

    iget-wide v3, p1, Landroidx/appcompat/view/menu/js0;->o:J

    sget v5, Landroidx/appcompat/view/menu/w8;->b:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->J()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    return-wide v1

    :cond_1
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/db;->w(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->k()Landroidx/appcompat/view/menu/my0;

    move-result-object v2

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Landroidx/appcompat/view/menu/w8;->d:Landroidx/appcompat/view/menu/my0;

    if-ne v1, v2, :cond_4

    return-wide v3

    :cond_3
    :goto_1
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->z()Landroidx/appcompat/view/menu/my0;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/js0;->p()V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ze;->g()Landroidx/appcompat/view/menu/ze;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/db;

    if-nez p1, :cond_0

    return-wide v1
.end method

.method public final Y()V
    .locals 7

    sget-object v6, Landroidx/appcompat/view/menu/v8;->p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const/16 v0, 0x3c

    shr-long v0, v2, v0

    long-to-int v0, v0

    if-nez v0, :cond_1

    const-wide v0, 0xfffffffffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Landroidx/appcompat/view/menu/w8;->b(JI)J

    move-result-wide v4

    move-object v0, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method public final Z()V
    .locals 7

    sget-object v6, Landroidx/appcompat/view/menu/v8;->p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide v0, 0xfffffffffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x3

    invoke-static {v0, v1, v4}, Landroidx/appcompat/view/menu/w8;->b(JI)J

    move-result-wide v4

    move-object v0, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final a0()V
    .locals 7

    sget-object v6, Landroidx/appcompat/view/menu/v8;->p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const/16 v0, 0x3c

    shr-long v0, v2, v0

    long-to-int v0, v0

    const-wide v4, 0xfffffffffffffffL

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    and-long v0, v2, v4

    const/4 v4, 0x3

    invoke-static {v0, v1, v4}, Landroidx/appcompat/view/menu/w8;->b(JI)J

    move-result-wide v0

    :goto_0
    move-wide v4, v0

    goto :goto_1

    :cond_2
    and-long v0, v2, v4

    const/4 v4, 0x2

    invoke-static {v0, v1, v4}, Landroidx/appcompat/view/menu/w8;->b(JI)J

    move-result-wide v0

    goto :goto_0

    :goto_1
    move-object v0, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final b0(JLandroidx/appcompat/view/menu/db;)V
    .locals 4

    :goto_0
    iget-wide v0, p3, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/ze;->e()Landroidx/appcompat/view/menu/ze;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/db;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object p3, v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p3}, Landroidx/appcompat/view/menu/js0;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/ze;->e()Landroidx/appcompat/view/menu/ze;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/db;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, p1

    goto :goto_1

    :cond_3
    :goto_2
    sget-object p1, Landroidx/appcompat/view/menu/v8;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_4
    :goto_3
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/js0;

    iget-wide v0, p2, Landroidx/appcompat/view/menu/js0;->o:J

    iget-wide v2, p3, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p3}, Landroidx/appcompat/view/menu/js0;->q()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p1, p0, p2, p3}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/js0;->m()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ze;->k()V

    :cond_7
    :goto_4
    return-void

    :cond_8
    invoke-virtual {p3}, Landroidx/appcompat/view/menu/js0;->m()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/ze;->k()V

    goto :goto_3
.end method

.method public c0()V
    .locals 0

    return-void
.end method

.method public final d0(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Landroidx/appcompat/view/menu/y9;

    invoke-static {p2}, Landroidx/appcompat/view/menu/a60;->b(Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/y9;-><init>(Landroidx/appcompat/view/menu/xg;I)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y9;->z()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/v8;->n:Landroidx/appcompat/view/menu/fw;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p1, v3, v2, v3}, Landroidx/appcompat/view/menu/ng0;->d(Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Landroidx/appcompat/view/menu/k31;ILjava/lang/Object;)Landroidx/appcompat/view/menu/k31;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->K()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/op;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    sget-object v1, Landroidx/appcompat/view/menu/np0;->m:Landroidx/appcompat/view/menu/np0$a;

    invoke-static {p1}, Landroidx/appcompat/view/menu/op0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/xg;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->K()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v1, Landroidx/appcompat/view/menu/np0;->m:Landroidx/appcompat/view/menu/np0$a;

    invoke-static {p1}, Landroidx/appcompat/view/menu/op0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/xg;->n(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/y9;->w()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Landroidx/appcompat/view/menu/gj;->c(Landroidx/appcompat/view/menu/xg;)V

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method

.method public final e(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/v8;->r(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final e0(Ljava/lang/Object;Landroidx/appcompat/view/menu/x9;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/v8;->n:Landroidx/appcompat/view/menu/fw;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Landroidx/appcompat/view/menu/xg;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroidx/appcompat/view/menu/ng0;->b(Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Landroidx/appcompat/view/menu/kh;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->K()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/view/menu/np0;->m:Landroidx/appcompat/view/menu/np0$a;

    invoke-static {p1}, Landroidx/appcompat/view/menu/op0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/xg;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public f0()V
    .locals 0

    return-void
.end method

.method public g0()V
    .locals 0

    return-void
.end method

.method public final h0(Landroidx/appcompat/view/menu/m71;Landroidx/appcompat/view/menu/db;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->g0()V

    invoke-interface {p1, p2, p3}, Landroidx/appcompat/view/menu/m71;->a(Landroidx/appcompat/view/menu/js0;I)V

    return-void
.end method

.method public final i0(Landroidx/appcompat/view/menu/m71;Landroidx/appcompat/view/menu/db;I)V
    .locals 1

    sget v0, Landroidx/appcompat/view/menu/w8;->b:I

    add-int/2addr p3, v0

    invoke-interface {p1, p2, p3}, Landroidx/appcompat/view/menu/m71;->a(Landroidx/appcompat/view/menu/js0;I)V

    return-void
.end method

.method public iterator()Landroidx/appcompat/view/menu/za;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/v8$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/v8$a;-><init>(Landroidx/appcompat/view/menu/v8;)V

    return-object v0
.end method

.method public final j0(Landroidx/appcompat/view/menu/db;)V
    .locals 11

    iget-object v0, p0, Landroidx/appcompat/view/menu/v8;->n:Landroidx/appcompat/view/menu/fw;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Landroidx/appcompat/view/menu/x40;->b(Ljava/lang/Object;ILandroidx/appcompat/view/menu/lj;)Ljava/lang/Object;

    move-result-object v3

    :cond_0
    sget v4, Landroidx/appcompat/view/menu/w8;->b:I

    sub-int/2addr v4, v2

    :goto_0
    const/4 v5, -0x1

    if-ge v5, v4, :cond_b

    iget-wide v6, p1, Landroidx/appcompat/view/menu/js0;->o:J

    sget v8, Landroidx/appcompat/view/menu/w8;->b:I

    int-to-long v8, v8

    mul-long/2addr v6, v8

    int-to-long v8, v4

    add-long/2addr v6, v8

    :cond_1
    invoke-virtual {p1, v4}, Landroidx/appcompat/view/menu/db;->w(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->f()Landroidx/appcompat/view/menu/my0;

    move-result-object v9

    if-eq v8, v9, :cond_c

    sget-object v9, Landroidx/appcompat/view/menu/w8;->d:Landroidx/appcompat/view/menu/my0;

    if-ne v8, v9, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->J()J

    move-result-wide v9

    cmp-long v9, v6, v9

    if-ltz v9, :cond_c

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->z()Landroidx/appcompat/view/menu/my0;

    move-result-object v9

    invoke-virtual {p1, v4, v8, v9}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {p1, v4}, Landroidx/appcompat/view/menu/db;->v(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5, v1}, Landroidx/appcompat/view/menu/ng0;->c(Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Landroidx/appcompat/view/menu/k31;)Landroidx/appcompat/view/menu/k31;

    move-result-object v1

    :cond_2
    invoke-virtual {p1, v4}, Landroidx/appcompat/view/menu/db;->s(I)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/js0;->p()V

    goto/16 :goto_4

    :cond_3
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->k()Landroidx/appcompat/view/menu/my0;

    move-result-object v9

    if-eq v8, v9, :cond_a

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    instance-of v9, v8, Landroidx/appcompat/view/menu/m71;

    if-nez v9, :cond_7

    instance-of v9, v8, Landroidx/appcompat/view/menu/n71;

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->p()Landroidx/appcompat/view/menu/my0;

    move-result-object v9

    if-eq v8, v9, :cond_c

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->q()Landroidx/appcompat/view/menu/my0;

    move-result-object v9

    if-ne v8, v9, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->p()Landroidx/appcompat/view/menu/my0;

    move-result-object v9

    if-eq v8, v9, :cond_1

    goto :goto_4

    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->J()J

    move-result-wide v9

    cmp-long v9, v6, v9

    if-ltz v9, :cond_c

    instance-of v9, v8, Landroidx/appcompat/view/menu/n71;

    if-eqz v9, :cond_8

    move-object v9, v8

    check-cast v9, Landroidx/appcompat/view/menu/n71;

    iget-object v9, v9, Landroidx/appcompat/view/menu/n71;->a:Landroidx/appcompat/view/menu/m71;

    goto :goto_2

    :cond_8
    move-object v9, v8

    check-cast v9, Landroidx/appcompat/view/menu/m71;

    :goto_2
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->z()Landroidx/appcompat/view/menu/my0;

    move-result-object v10

    invoke-virtual {p1, v4, v8, v10}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v0, :cond_9

    invoke-virtual {p1, v4}, Landroidx/appcompat/view/menu/db;->v(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5, v1}, Landroidx/appcompat/view/menu/ng0;->c(Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Landroidx/appcompat/view/menu/k31;)Landroidx/appcompat/view/menu/k31;

    move-result-object v1

    :cond_9
    invoke-static {v3, v9}, Landroidx/appcompat/view/menu/x40;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v4}, Landroidx/appcompat/view/menu/db;->s(I)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/js0;->p()V

    goto :goto_4

    :cond_a
    :goto_3
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->z()Landroidx/appcompat/view/menu/my0;

    move-result-object v9

    invoke-virtual {p1, v4, v8, v9}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/js0;->p()V

    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ze;->g()Landroidx/appcompat/view/menu/ze;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/db;

    if-nez p1, :cond_0

    :cond_c
    :goto_5
    if-eqz v3, :cond_e

    instance-of p1, v3, Ljava/util/ArrayList;

    if-nez p1, :cond_d

    check-cast v3, Landroidx/appcompat/view/menu/m71;

    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/v8;->l0(Landroidx/appcompat/view/menu/m71;)V

    goto :goto_7

    :cond_d
    const-string p1, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }"

    invoke-static {v3, p1}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_6
    if-ge v5, p1, :cond_e

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/m71;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/v8;->l0(Landroidx/appcompat/view/menu/m71;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_e
    :goto_7
    if-nez v1, :cond_f

    return-void

    :cond_f
    throw v1
.end method

.method public k(Ljava/lang/Throwable;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/v8;->u(Ljava/lang/Throwable;Z)Z

    move-result p1

    return p1
.end method

.method public final k0(Landroidx/appcompat/view/menu/m71;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/v8;->m0(Landroidx/appcompat/view/menu/m71;Z)V

    return-void
.end method

.method public final l0(Landroidx/appcompat/view/menu/m71;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/v8;->m0(Landroidx/appcompat/view/menu/m71;Z)V

    return-void
.end method

.method public final m0(Landroidx/appcompat/view/menu/m71;Z)V
    .locals 2

    instance-of v0, p1, Landroidx/appcompat/view/menu/x9;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/appcompat/view/menu/xg;

    sget-object v0, Landroidx/appcompat/view/menu/np0;->m:Landroidx/appcompat/view/menu/np0$a;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->I()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->K()Ljava/lang/Throwable;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Landroidx/appcompat/view/menu/op0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/appcompat/view/menu/xg;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    instance-of p2, p1, Landroidx/appcompat/view/menu/v8$a;

    if-eqz p2, :cond_2

    check-cast p1, Landroidx/appcompat/view/menu/v8$a;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/v8$a;->j()V

    :goto_1
    return-void

    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected waiter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final o0(Landroidx/appcompat/view/menu/db;ILjava/lang/Object;JLandroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v0, p3

    invoke-static/range {p6 .. p6}, Landroidx/appcompat/view/menu/a60;->b(Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/xg;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/aa;->a(Landroidx/appcompat/view/menu/xg;)Landroidx/appcompat/view/menu/y9;

    move-result-object v10

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object v7, v10

    :try_start_0
    invoke-static/range {v1 .. v8}, Landroidx/appcompat/view/menu/v8;->o(Landroidx/appcompat/view/menu/v8;Landroidx/appcompat/view/menu/db;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_10

    const/4 v11, 0x1

    if-eq v1, v11, :cond_f

    const/4 v12, 0x2

    if-eq v1, v12, :cond_e

    const/4 v13, 0x4

    if-eq v1, v13, :cond_d

    const-string v14, "unexpected"

    const/4 v15, 0x5

    if-ne v1, v15, :cond_c

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/ze;->b()V

    invoke-static {}, Landroidx/appcompat/view/menu/v8;->g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/db;

    :cond_0
    :goto_0
    invoke-static {}, Landroidx/appcompat/view/menu/v8;->h()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide v4, 0xfffffffffffffffL

    and-long v16, v2, v4

    invoke-static {v9, v2, v3}, Landroidx/appcompat/view/menu/v8;->i(Landroidx/appcompat/view/menu/v8;J)Z

    move-result v18

    sget v2, Landroidx/appcompat/view/menu/w8;->b:I

    int-to-long v3, v2

    div-long v3, v16, v3

    int-to-long v5, v2

    rem-long v5, v16, v5

    long-to-int v8, v5

    iget-wide v5, v1, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_3

    invoke-static {v9, v3, v4, v1}, Landroidx/appcompat/view/menu/v8;->b(Landroidx/appcompat/view/menu/v8;JLandroidx/appcompat/view/menu/db;)Landroidx/appcompat/view/menu/db;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v18, :cond_0

    :cond_1
    :goto_1
    invoke-static {v9, v0, v10}, Landroidx/appcompat/view/menu/v8;->j(Landroidx/appcompat/view/menu/v8;Ljava/lang/Object;Landroidx/appcompat/view/menu/x9;)V

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_2
    move-object v7, v2

    goto :goto_2

    :cond_3
    move-object v7, v1

    :goto_2
    move-object/from16 v1, p0

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p3

    move-wide/from16 v5, v16

    move-object/from16 p1, v7

    move-object v7, v10

    move/from16 v19, v8

    move/from16 v8, v18

    invoke-static/range {v1 .. v8}, Landroidx/appcompat/view/menu/v8;->o(Landroidx/appcompat/view/menu/v8;Landroidx/appcompat/view/menu/db;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v1

    if-eqz v1, :cond_b

    if-eq v1, v11, :cond_a

    if-eq v1, v12, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    if-eq v1, v13, :cond_5

    if-eq v1, v15, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/ze;->b()V

    :goto_3
    move-object/from16 v1, p1

    goto :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/v8;->J()J

    move-result-wide v1

    cmp-long v1, v16, v1

    if-gez v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/ze;->b()V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-eqz v18, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/js0;->p()V

    goto :goto_1

    :cond_8
    instance-of v0, v10, Landroidx/appcompat/view/menu/m71;

    if-eqz v0, :cond_9

    move-object v0, v10

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_11

    move-object/from16 v2, p1

    move/from16 v1, v19

    invoke-static {v9, v0, v2, v1}, Landroidx/appcompat/view/menu/v8;->m(Landroidx/appcompat/view/menu/v8;Landroidx/appcompat/view/menu/m71;Landroidx/appcompat/view/menu/db;I)V

    goto :goto_6

    :cond_a
    sget-object v0, Landroidx/appcompat/view/menu/np0;->m:Landroidx/appcompat/view/menu/np0$a;

    sget-object v0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    invoke-static {v0}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-interface {v10, v0}, Landroidx/appcompat/view/menu/xg;->n(Ljava/lang/Object;)V

    goto :goto_6

    :cond_b
    move-object/from16 v2, p1

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ze;->b()V

    sget-object v0, Landroidx/appcompat/view/menu/np0;->m:Landroidx/appcompat/view/menu/np0$a;

    sget-object v0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    invoke-static {v0}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/v8;->J()J

    move-result-wide v1

    cmp-long v1, p4, v1

    if-gez v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/ze;->b()V

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v9, v10, v0, v1}, Landroidx/appcompat/view/menu/v8;->m(Landroidx/appcompat/view/menu/v8;Landroidx/appcompat/view/menu/m71;Landroidx/appcompat/view/menu/db;I)V

    goto :goto_6

    :cond_f
    sget-object v0, Landroidx/appcompat/view/menu/np0;->m:Landroidx/appcompat/view/menu/np0$a;

    sget-object v0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    invoke-static {v0}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_10
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/appcompat/view/menu/ze;->b()V

    sget-object v0, Landroidx/appcompat/view/menu/np0;->m:Landroidx/appcompat/view/menu/np0$a;

    sget-object v0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    invoke-static {v0}, Landroidx/appcompat/view/menu/np0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_11
    :goto_6
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/y9;->w()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_12

    invoke-static/range {p6 .. p6}, Landroidx/appcompat/view/menu/gj;->c(Landroidx/appcompat/view/menu/xg;)V

    :cond_12
    invoke-static {}, Landroidx/appcompat/view/menu/a60;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_13

    return-object v0

    :cond_13
    sget-object v0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object v0

    :goto_7
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/y9;->I()V

    throw v0
.end method

.method public final p(J)Z
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->G()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->J()J

    move-result-wide v0

    iget v2, p0, Landroidx/appcompat/view/menu/v8;->m:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final p0(J)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/v8;->U(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-wide v0, 0xfffffffffffffffL

    and-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/v8;->p(J)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public q(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/v8;->n0(Landroidx/appcompat/view/menu/v8;Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final q0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/appcompat/view/menu/v8$a;

    if-eqz v0, :cond_0

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/view/menu/v8$a;

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/v8$a;->i(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroidx/appcompat/view/menu/x9;

    if-eqz v0, :cond_2

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/view/menu/x9;

    iget-object v0, p0, Landroidx/appcompat/view/menu/v8;->n:Landroidx/appcompat/view/menu/fw;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/xg;->b()Landroidx/appcompat/view/menu/kh;

    move-result-object v1

    invoke-static {v0, p2, v1}, Landroidx/appcompat/view/menu/ng0;->a(Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Landroidx/appcompat/view/menu/kh;)Landroidx/appcompat/view/menu/fw;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, v0}, Landroidx/appcompat/view/menu/w8;->u(Landroidx/appcompat/view/menu/x9;Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;)Z

    move-result p1

    :goto_1
    return p1

    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected receiver type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public r(Ljava/lang/Throwable;)Z
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "Channel was cancelled"

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/v8;->u(Ljava/lang/Throwable;Z)Z

    move-result p1

    return p1
.end method

.method public final r0(Ljava/lang/Object;Landroidx/appcompat/view/menu/db;I)Z
    .locals 1

    instance-of p2, p1, Landroidx/appcompat/view/menu/x9;

    if-eqz p2, :cond_0

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/view/menu/x9;

    sget-object p2, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3, v0}, Landroidx/appcompat/view/menu/w8;->C(Landroidx/appcompat/view/menu/x9;Ljava/lang/Object;Landroidx/appcompat/view/menu/fw;ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected waiter: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final s(Landroidx/appcompat/view/menu/db;J)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Landroidx/appcompat/view/menu/x40;->b(Ljava/lang/Object;ILandroidx/appcompat/view/menu/lj;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const/4 v2, -0x1

    if-eqz p1, :cond_6

    sget v3, Landroidx/appcompat/view/menu/w8;->b:I

    sub-int/2addr v3, v1

    :goto_1
    if-ge v2, v3, :cond_5

    iget-wide v4, p1, Landroidx/appcompat/view/menu/js0;->o:J

    sget v6, Landroidx/appcompat/view/menu/w8;->b:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    int-to-long v6, v3

    add-long/2addr v4, v6

    cmp-long v4, v4, p2

    if-ltz v4, :cond_6

    :cond_0
    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/db;->w(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->k()Landroidx/appcompat/view/menu/my0;

    move-result-object v5

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    instance-of v5, v4, Landroidx/appcompat/view/menu/n71;

    if-eqz v5, :cond_2

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->z()Landroidx/appcompat/view/menu/my0;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    check-cast v4, Landroidx/appcompat/view/menu/n71;

    iget-object v4, v4, Landroidx/appcompat/view/menu/n71;->a:Landroidx/appcompat/view/menu/m71;

    invoke-static {v0, v4}, Landroidx/appcompat/view/menu/x40;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v3, v1}, Landroidx/appcompat/view/menu/db;->x(IZ)V

    goto :goto_3

    :cond_2
    instance-of v5, v4, Landroidx/appcompat/view/menu/m71;

    if-eqz v5, :cond_4

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->z()Landroidx/appcompat/view/menu/my0;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v0, v4}, Landroidx/appcompat/view/menu/x40;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v3, v1}, Landroidx/appcompat/view/menu/db;->x(IZ)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->z()Landroidx/appcompat/view/menu/my0;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/js0;->p()V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ze;->g()Landroidx/appcompat/view/menu/ze;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/db;

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_8

    instance-of p1, v0, Ljava/util/ArrayList;

    if-nez p1, :cond_7

    check-cast v0, Landroidx/appcompat/view/menu/m71;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/v8;->k0(Landroidx/appcompat/view/menu/m71;)V

    goto :goto_5

    :cond_7
    const-string p1, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }"

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_4
    if-ge v2, p1, :cond_8

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/m71;

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/v8;->k0(Landroidx/appcompat/view/menu/m71;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method public final s0(Landroidx/appcompat/view/menu/db;IJ)Z
    .locals 3

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/db;->w(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/m71;

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/appcompat/view/menu/v8;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-ltz v1, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->p()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, p1, p2}, Landroidx/appcompat/view/menu/v8;->r0(Ljava/lang/Object;Landroidx/appcompat/view/menu/db;I)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Landroidx/appcompat/view/menu/w8;->d:Landroidx/appcompat/view/menu/my0;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/db;->A(ILjava/lang/Object;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->j()Landroidx/appcompat/view/menu/my0;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/db;->A(ILjava/lang/Object;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/db;->x(IZ)V

    move p1, p3

    :goto_0
    return p1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/v8;->t0(Landroidx/appcompat/view/menu/db;IJ)Z

    move-result p1

    return p1
.end method

.method public final t()Landroidx/appcompat/view/menu/db;
    .locals 6

    sget-object v0, Landroidx/appcompat/view/menu/v8;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/v8;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/db;

    iget-wide v2, v1, Landroidx/appcompat/view/menu/js0;->o:J

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/view/menu/db;

    iget-wide v4, v4, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object v0, v1

    :cond_0
    sget-object v1, Landroidx/appcompat/view/menu/v8;->u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/db;

    iget-wide v2, v1, Landroidx/appcompat/view/menu/js0;->o:J

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/view/menu/db;

    iget-wide v4, v4, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Landroidx/appcompat/view/menu/ze;

    invoke-static {v0}, Landroidx/appcompat/view/menu/ye;->b(Landroidx/appcompat/view/menu/ze;)Landroidx/appcompat/view/menu/ze;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/db;

    return-object v0
.end method

.method public final t0(Landroidx/appcompat/view/menu/db;IJ)Z
    .locals 6

    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/db;->w(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/m71;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/appcompat/view/menu/v8;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    cmp-long v1, p3, v4

    if-gez v1, :cond_1

    new-instance v1, Landroidx/appcompat/view/menu/n71;

    move-object v2, v0

    check-cast v2, Landroidx/appcompat/view/menu/m71;

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/n71;-><init>(Landroidx/appcompat/view/menu/m71;)V

    invoke-virtual {p1, p2, v0, v1}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->p()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/appcompat/view/menu/v8;->r0(Ljava/lang/Object;Landroidx/appcompat/view/menu/db;I)Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Landroidx/appcompat/view/menu/w8;->d:Landroidx/appcompat/view/menu/my0;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/db;->A(ILjava/lang/Object;)V

    move v2, v3

    goto :goto_1

    :cond_2
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->j()Landroidx/appcompat/view/menu/my0;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/db;->A(ILjava/lang/Object;)V

    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/view/menu/db;->x(IZ)V

    :goto_1
    return v2

    :cond_3
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->j()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    if-ne v0, v1, :cond_4

    return v2

    :cond_4
    if-nez v0, :cond_5

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->k()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_5
    sget-object v1, Landroidx/appcompat/view/menu/w8;->d:Landroidx/appcompat/view/menu/my0;

    if-ne v0, v1, :cond_6

    return v3

    :cond_6
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->o()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    if-eq v0, v1, :cond_a

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->f()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    if-eq v0, v1, :cond_a

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->i()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    if-ne v0, v1, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->z()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    if-ne v0, v1, :cond_8

    return v3

    :cond_8
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->q()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    if-ne v0, v1, :cond_9

    goto :goto_0

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected cell state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_2
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroidx/appcompat/view/menu/v8;->p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const/16 v4, 0x3c

    shr-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "cancelled,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v2, "closed,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "capacity="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroidx/appcompat/view/menu/v8;->m:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v3, [Landroidx/appcompat/view/menu/db;

    sget-object v3, Landroidx/appcompat/view/menu/v8;->u:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v2, v6

    sget-object v3, Landroidx/appcompat/view/menu/v8;->t:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v2, v7

    sget-object v3, Landroidx/appcompat/view/menu/v8;->v:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Landroidx/appcompat/view/menu/qc;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroidx/appcompat/view/menu/db;

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->n()Landroidx/appcompat/view/menu/db;

    move-result-object v9

    if-eq v8, v9, :cond_2

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v3

    check-cast v4, Landroidx/appcompat/view/menu/db;

    iget-wide v8, v4, Landroidx/appcompat/view/menu/js0;->o:J

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroidx/appcompat/view/menu/db;

    iget-wide v10, v10, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long v12, v8, v10

    if-lez v12, :cond_6

    move-object v3, v4

    move-wide v8, v10

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    :goto_2
    check-cast v3, Landroidx/appcompat/view/menu/db;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/v8;->J()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/v8;->L()J

    move-result-wide v12

    :goto_3
    sget v2, Landroidx/appcompat/view/menu/w8;->b:I

    move v4, v6

    :goto_4
    if-ge v4, v2, :cond_16

    iget-wide v8, v3, Landroidx/appcompat/view/menu/js0;->o:J

    sget v14, Landroidx/appcompat/view/menu/w8;->b:I

    int-to-long v14, v14

    mul-long/2addr v8, v14

    int-to-long v14, v4

    add-long/2addr v8, v14

    cmp-long v14, v8, v12

    if-ltz v14, :cond_7

    cmp-long v15, v8, v10

    if-gez v15, :cond_17

    :cond_7
    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/db;->w(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/db;->v(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v15, Landroidx/appcompat/view/menu/x9;

    if-eqz v7, :cond_a

    cmp-long v7, v8, v10

    if-gez v7, :cond_8

    if-ltz v14, :cond_8

    const-string v7, "receive"

    goto/16 :goto_6

    :cond_8
    if-gez v14, :cond_9

    if-ltz v7, :cond_9

    const-string v7, "send"

    goto/16 :goto_6

    :cond_9
    const-string v7, "cont"

    goto/16 :goto_6

    :cond_a
    instance-of v7, v15, Landroidx/appcompat/view/menu/n71;

    if-eqz v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EB("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_b
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->q()Landroidx/appcompat/view/menu/my0;

    move-result-object v7

    invoke-static {v15, v7}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_5

    :cond_c
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->p()Landroidx/appcompat/view/menu/my0;

    move-result-object v7

    invoke-static {v15, v7}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    :goto_5
    const-string v7, "resuming_sender"

    goto :goto_6

    :cond_d
    if-nez v15, :cond_e

    goto/16 :goto_7

    :cond_e
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->k()Landroidx/appcompat/view/menu/my0;

    move-result-object v7

    invoke-static {v15, v7}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto/16 :goto_7

    :cond_f
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->f()Landroidx/appcompat/view/menu/my0;

    move-result-object v7

    invoke-static {v15, v7}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_7

    :cond_10
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->o()Landroidx/appcompat/view/menu/my0;

    move-result-object v7

    invoke-static {v15, v7}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    goto :goto_7

    :cond_11
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->i()Landroidx/appcompat/view/menu/my0;

    move-result-object v7

    invoke-static {v15, v7}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    goto :goto_7

    :cond_12
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->j()Landroidx/appcompat/view/menu/my0;

    move-result-object v7

    invoke-static {v15, v7}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    goto :goto_7

    :cond_13
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->z()Landroidx/appcompat/view/menu/my0;

    move-result-object v7

    invoke-static {v15, v7}, Landroidx/appcompat/view/menu/z50;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_6
    if-eqz v6, :cond_14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x28

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "),"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    :goto_7
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_16
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ze;->e()Landroidx/appcompat/view/menu/ze;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/appcompat/view/menu/db;

    if-nez v3, :cond_19

    :cond_17
    invoke-static {v1}, Landroidx/appcompat/view/menu/nx0;->H(Ljava/lang/CharSequence;)C

    move-result v2

    if-ne v2, v5, :cond_18

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "this.deleteCharAt(index)"

    invoke-static {v2, v3}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_18
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_19
    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_1a
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public u(Ljava/lang/Throwable;Z)Z
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->Y()V

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/v8;->w:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->l()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->Z()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->a0()V

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->z()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->c0()V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->P()V

    :cond_2
    return p1
.end method

.method public final u0(Landroidx/appcompat/view/menu/db;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/db;->w(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v1, Landroidx/appcompat/view/menu/v8;->p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long/2addr v1, v3

    cmp-long v1, p3, v1

    if-ltz v1, :cond_2

    if-nez p5, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->s()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, p2, v0, p5}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->C()V

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->r()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v1, Landroidx/appcompat/view/menu/w8;->d:Landroidx/appcompat/view/menu/my0;

    if-ne v0, v1, :cond_2

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->f()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->C()V

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/db;->y(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual/range {p0 .. p5}, Landroidx/appcompat/view/menu/v8;->v0(Landroidx/appcompat/view/menu/db;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public v(Landroidx/appcompat/view/menu/fw;)V
    .locals 4

    sget-object v0, Landroidx/appcompat/view/menu/v8;->x:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->d()Landroidx/appcompat/view/menu/my0;

    move-result-object v2

    if-ne v1, v2, :cond_1

    sget-object v1, Landroidx/appcompat/view/menu/v8;->x:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->d()Landroidx/appcompat/view/menu/my0;

    move-result-object v2

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->e()Landroidx/appcompat/view/menu/my0;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->H()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/fw;->i(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->e()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    if-ne v1, p1, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Another handler was already registered and successfully invoked"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another handler is already registered: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final v0(Landroidx/appcompat/view/menu/db;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/db;->w(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->k()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object v1, Landroidx/appcompat/view/menu/w8;->d:Landroidx/appcompat/view/menu/my0;

    if-ne v0, v1, :cond_2

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->f()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->C()V

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/db;->y(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->j()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->h()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->o()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->h()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->z()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->C()V

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->h()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->p()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->q()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of p3, v0, Landroidx/appcompat/view/menu/n71;

    if-eqz p3, :cond_6

    check-cast v0, Landroidx/appcompat/view/menu/n71;

    iget-object v0, v0, Landroidx/appcompat/view/menu/n71;->a:Landroidx/appcompat/view/menu/m71;

    :cond_6
    invoke-virtual {p0, v0, p1, p2}, Landroidx/appcompat/view/menu/v8;->r0(Ljava/lang/Object;Landroidx/appcompat/view/menu/db;I)Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->f()Landroidx/appcompat/view/menu/my0;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/db;->A(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->C()V

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/db;->y(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_7
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->j()Landroidx/appcompat/view/menu/my0;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroidx/appcompat/view/menu/db;->A(ILjava/lang/Object;)V

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Landroidx/appcompat/view/menu/db;->x(IZ)V

    if-eqz p3, :cond_8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->C()V

    :cond_8
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->h()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_9
    :goto_1
    sget-object v1, Landroidx/appcompat/view/menu/v8;->p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long/2addr v1, v3

    cmp-long v1, p3, v1

    if-gez v1, :cond_a

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->o()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->C()V

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->h()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    return-object p1

    :cond_a
    if-nez p5, :cond_b

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->s()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {p1, p2, v0, p5}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->C()V

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->r()Landroidx/appcompat/view/menu/my0;

    move-result-object p1

    return-object p1
.end method

.method public final w(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/v8;->x(J)Landroidx/appcompat/view/menu/db;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/v8;->j0(Landroidx/appcompat/view/menu/db;)V

    return-void
.end method

.method public final w0(Landroidx/appcompat/view/menu/db;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 3

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/db;->B(ILjava/lang/Object;)V

    if-eqz p7, :cond_0

    invoke-virtual/range {p0 .. p7}, Landroidx/appcompat/view/menu/v8;->x0(Landroidx/appcompat/view/menu/db;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/db;->w(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0, p4, p5}, Landroidx/appcompat/view/menu/v8;->p(J)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/appcompat/view/menu/w8;->d:Landroidx/appcompat/view/menu/my0;

    invoke-virtual {p1, p2, v2, v0}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_1
    if-nez p6, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    invoke-virtual {p1, p2, v2, p6}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x2

    return p1

    :cond_3
    instance-of v2, v0, Landroidx/appcompat/view/menu/m71;

    if-eqz v2, :cond_6

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/db;->s(I)V

    invoke-virtual {p0, v0, p3}, Landroidx/appcompat/view/menu/v8;->q0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->f()Landroidx/appcompat/view/menu/my0;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/db;->A(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->f0()V

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->i()Landroidx/appcompat/view/menu/my0;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/db;->t(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->i()Landroidx/appcompat/view/menu/my0;

    move-result-object p4

    if-eq p3, p4, :cond_5

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/view/menu/db;->x(IZ)V

    :cond_5
    const/4 p1, 0x5

    :goto_0
    return p1

    :cond_6
    invoke-virtual/range {p0 .. p7}, Landroidx/appcompat/view/menu/v8;->x0(Landroidx/appcompat/view/menu/db;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result p1

    return p1
.end method

.method public final x(J)Landroidx/appcompat/view/menu/db;
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->t()Landroidx/appcompat/view/menu/db;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->V()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/v8;->X(Landroidx/appcompat/view/menu/db;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/view/menu/v8;->B(J)V

    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Landroidx/appcompat/view/menu/v8;->s(Landroidx/appcompat/view/menu/db;J)V

    return-object v0
.end method

.method public final x0(Landroidx/appcompat/view/menu/db;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 5

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/db;->w(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p0, p4, p5}, Landroidx/appcompat/view/menu/v8;->p(J)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    if-nez p7, :cond_1

    sget-object v0, Landroidx/appcompat/view/menu/w8;->d:Landroidx/appcompat/view/menu/my0;

    invoke-virtual {p1, p2, v4, v0}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_1
    if-eqz p7, :cond_2

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->j()Landroidx/appcompat/view/menu/my0;

    move-result-object v0

    invoke-virtual {p1, p2, v4, v0}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/view/menu/db;->x(IZ)V

    return v1

    :cond_2
    if-nez p6, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    invoke-virtual {p1, p2, v4, p6}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_4
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->k()Landroidx/appcompat/view/menu/my0;

    move-result-object v4

    if-ne v0, v4, :cond_5

    sget-object v1, Landroidx/appcompat/view/menu/w8;->d:Landroidx/appcompat/view/menu/my0;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/appcompat/view/menu/db;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_5
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->i()Landroidx/appcompat/view/menu/my0;

    move-result-object p4

    const/4 p5, 0x5

    if-ne v0, p4, :cond_6

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/db;->s(I)V

    return p5

    :cond_6
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->o()Landroidx/appcompat/view/menu/my0;

    move-result-object p4

    if-ne v0, p4, :cond_7

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/db;->s(I)V

    return p5

    :cond_7
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->z()Landroidx/appcompat/view/menu/my0;

    move-result-object p4

    if-ne v0, p4, :cond_8

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/db;->s(I)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->z()V

    return v1

    :cond_8
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/db;->s(I)V

    instance-of p4, v0, Landroidx/appcompat/view/menu/n71;

    if-eqz p4, :cond_9

    check-cast v0, Landroidx/appcompat/view/menu/n71;

    iget-object v0, v0, Landroidx/appcompat/view/menu/n71;->a:Landroidx/appcompat/view/menu/m71;

    :cond_9
    invoke-virtual {p0, v0, p3}, Landroidx/appcompat/view/menu/v8;->q0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->f()Landroidx/appcompat/view/menu/my0;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/db;->A(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->f0()V

    goto :goto_0

    :cond_a
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->i()Landroidx/appcompat/view/menu/my0;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/db;->t(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {}, Landroidx/appcompat/view/menu/w8;->i()Landroidx/appcompat/view/menu/my0;

    move-result-object p4

    if-eq p3, p4, :cond_b

    invoke-virtual {p1, p2, v3}, Landroidx/appcompat/view/menu/db;->x(IZ)V

    :cond_b
    move v2, p5

    :goto_0
    return v2
.end method

.method public y(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Landroidx/appcompat/view/menu/v8;->p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/view/menu/v8;->p0(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Landroidx/appcompat/view/menu/bb;->a:Landroidx/appcompat/view/menu/bb$b;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/bb$b;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/w8;->j()Landroidx/appcompat/view/menu/my0;

    move-result-object v8

    invoke-static {}, Landroidx/appcompat/view/menu/v8;->g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/db;

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/appcompat/view/menu/v8;->h()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long v9, v1, v3

    invoke-static {p0, v1, v2}, Landroidx/appcompat/view/menu/v8;->i(Landroidx/appcompat/view/menu/v8;J)Z

    move-result v11

    sget v1, Landroidx/appcompat/view/menu/w8;->b:I

    int-to-long v2, v1

    div-long v2, v9, v2

    int-to-long v4, v1

    rem-long v4, v9, v4

    long-to-int v12, v4

    iget-wide v4, v0, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    invoke-static {p0, v2, v3, v0}, Landroidx/appcompat/view/menu/v8;->b(Landroidx/appcompat/view/menu/v8;JLandroidx/appcompat/view/menu/db;)Landroidx/appcompat/view/menu/db;

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz v11, :cond_1

    :cond_2
    :goto_1
    sget-object p1, Landroidx/appcompat/view/menu/bb;->a:Landroidx/appcompat/view/menu/bb$b;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->K()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/bb$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_6

    :cond_3
    move-object v13, v1

    goto :goto_2

    :cond_4
    move-object v13, v0

    :goto_2
    move-object v0, p0

    move-object v1, v13

    move v2, v12

    move-object v3, p1

    move-wide v4, v9

    move-object v6, v8

    move v7, v11

    invoke-static/range {v0 .. v7}, Landroidx/appcompat/view/menu/v8;->o(Landroidx/appcompat/view/menu/v8;Landroidx/appcompat/view/menu/db;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v13}, Landroidx/appcompat/view/menu/ze;->b()V

    :goto_3
    move-object v0, v13

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->J()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-gez p1, :cond_2

    invoke-virtual {v13}, Landroidx/appcompat/view/menu/ze;->b()V

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    if-eqz v11, :cond_9

    invoke-virtual {v13}, Landroidx/appcompat/view/menu/js0;->p()V

    goto :goto_1

    :cond_9
    instance-of p1, v8, Landroidx/appcompat/view/menu/m71;

    if-eqz p1, :cond_a

    check-cast v8, Landroidx/appcompat/view/menu/m71;

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_b

    invoke-static {p0, v8, v13, v12}, Landroidx/appcompat/view/menu/v8;->m(Landroidx/appcompat/view/menu/v8;Landroidx/appcompat/view/menu/m71;Landroidx/appcompat/view/menu/db;I)V

    :cond_b
    invoke-virtual {v13}, Landroidx/appcompat/view/menu/js0;->p()V

    sget-object p1, Landroidx/appcompat/view/menu/bb;->a:Landroidx/appcompat/view/menu/bb$b;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/bb$b;->b()Ljava/lang/Object;

    move-result-object p1

    goto :goto_6

    :cond_c
    :goto_5
    sget-object p1, Landroidx/appcompat/view/menu/bb;->a:Landroidx/appcompat/view/menu/bb$b;

    sget-object v0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/bb$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_6

    :cond_d
    invoke-virtual {v13}, Landroidx/appcompat/view/menu/ze;->b()V

    goto :goto_5

    :goto_6
    return-object p1
.end method

.method public final y0(J)V
    .locals 7

    sget-object v0, Landroidx/appcompat/view/menu/v8;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    cmp-long v1, v3, p1

    if-ltz v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Landroidx/appcompat/view/menu/v8;->q:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v2, p0

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final z()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->A()Z

    return-void
.end method

.method public final z0(J)V
    .locals 7

    sget-object v0, Landroidx/appcompat/view/menu/v8;->p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide v1, 0xfffffffffffffffL

    and-long/2addr v1, v3

    cmp-long v5, v1, p1

    if-ltz v5, :cond_1

    return-void

    :cond_1
    const/16 v5, 0x3c

    shr-long v5, v3, v5

    long-to-int v5, v5

    invoke-static {v1, v2, v5}, Landroidx/appcompat/view/menu/w8;->b(JI)J

    move-result-wide v5

    sget-object v1, Landroidx/appcompat/view/menu/v8;->p:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method
