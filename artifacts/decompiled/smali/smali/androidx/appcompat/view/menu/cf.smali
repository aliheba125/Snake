.class public Landroidx/appcompat/view/menu/cf;
.super Landroidx/appcompat/view/menu/v8;
.source "SourceFile"


# instance fields
.field public final y:I

.field public final z:Landroidx/appcompat/view/menu/u8;


# direct methods
.method public constructor <init>(ILandroidx/appcompat/view/menu/u8;Landroidx/appcompat/view/menu/fw;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Landroidx/appcompat/view/menu/v8;-><init>(ILandroidx/appcompat/view/menu/fw;)V

    iput p1, p0, Landroidx/appcompat/view/menu/cf;->y:I

    iput-object p2, p0, Landroidx/appcompat/view/menu/cf;->z:Landroidx/appcompat/view/menu/u8;

    sget-object p3, Landroidx/appcompat/view/menu/u8;->m:Landroidx/appcompat/view/menu/u8;

    if-eq p2, p3, :cond_1

    const/4 p2, 0x1

    if-lt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Buffered channel capacity must be at least 1, but "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was specified"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "This implementation does not support suspension for senders, use "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Landroidx/appcompat/view/menu/v8;

    invoke-static {p2}, Landroidx/appcompat/view/menu/do0;->b(Ljava/lang/Class;)Landroidx/appcompat/view/menu/k70;

    move-result-object p2

    invoke-interface {p2}, Landroidx/appcompat/view/menu/k70;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " instead"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic B0(Landroidx/appcompat/view/menu/cf;Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 2

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/cf;->E0(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Landroidx/appcompat/view/menu/bb$a;

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroidx/appcompat/view/menu/bb;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    iget-object p2, p0, Landroidx/appcompat/view/menu/v8;->n:Landroidx/appcompat/view/menu/fw;

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Landroidx/appcompat/view/menu/ng0;->d(Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Landroidx/appcompat/view/menu/k31;ILjava/lang/Object;)Landroidx/appcompat/view/menu/k31;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->K()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/appcompat/view/menu/op;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/v8;->K()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_1
    sget-object p0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p0
.end method


# virtual methods
.method public final C0(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/v8;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/bb;->e(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Landroidx/appcompat/view/menu/bb;->d(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/appcompat/view/menu/v8;->n:Landroidx/appcompat/view/menu/fw;

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Landroidx/appcompat/view/menu/ng0;->d(Landroidx/appcompat/view/menu/fw;Ljava/lang/Object;Landroidx/appcompat/view/menu/k31;ILjava/lang/Object;)Landroidx/appcompat/view/menu/k31;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    throw p1

    :cond_2
    :goto_0
    sget-object p1, Landroidx/appcompat/view/menu/bb;->a:Landroidx/appcompat/view/menu/bb$b;

    sget-object p2, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/bb$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final D0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v8, p0

    sget-object v9, Landroidx/appcompat/view/menu/w8;->d:Landroidx/appcompat/view/menu/my0;

    invoke-static {}, Landroidx/appcompat/view/menu/v8;->g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/db;

    :cond_0
    :goto_0
    invoke-static {}, Landroidx/appcompat/view/menu/v8;->h()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long v10, v1, v3

    invoke-static {v8, v1, v2}, Landroidx/appcompat/view/menu/v8;->i(Landroidx/appcompat/view/menu/v8;J)Z

    move-result v12

    sget v13, Landroidx/appcompat/view/menu/w8;->b:I

    int-to-long v1, v13

    div-long v1, v10, v1

    int-to-long v3, v13

    rem-long v3, v10, v3

    long-to-int v14, v3

    iget-wide v3, v0, Landroidx/appcompat/view/menu/js0;->o:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_2

    invoke-static {v8, v1, v2, v0}, Landroidx/appcompat/view/menu/v8;->b(Landroidx/appcompat/view/menu/v8;JLandroidx/appcompat/view/menu/db;)Landroidx/appcompat/view/menu/db;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v12, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/bb;->a:Landroidx/appcompat/view/menu/bb$b;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/v8;->K()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/bb$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v15, v1

    goto :goto_1

    :cond_2
    move-object v15, v0

    :goto_1
    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v14

    move-object/from16 v3, p1

    move-wide v4, v10

    move-object v6, v9

    move v7, v12

    invoke-static/range {v0 .. v7}, Landroidx/appcompat/view/menu/v8;->o(Landroidx/appcompat/view/menu/v8;Landroidx/appcompat/view/menu/db;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

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
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ze;->b()V

    :goto_2
    move-object v0, v15

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/v8;->J()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_5

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ze;->b()V

    :cond_5
    sget-object v0, Landroidx/appcompat/view/menu/bb;->a:Landroidx/appcompat/view/menu/bb$b;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/v8;->K()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/bb$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-eqz v12, :cond_8

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/js0;->p()V

    sget-object v0, Landroidx/appcompat/view/menu/bb;->a:Landroidx/appcompat/view/menu/bb$b;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/v8;->K()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/bb$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_8
    instance-of v0, v9, Landroidx/appcompat/view/menu/m71;

    if-eqz v0, :cond_9

    check-cast v9, Landroidx/appcompat/view/menu/m71;

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_a

    invoke-static {v8, v9, v15, v14}, Landroidx/appcompat/view/menu/v8;->m(Landroidx/appcompat/view/menu/v8;Landroidx/appcompat/view/menu/m71;Landroidx/appcompat/view/menu/db;I)V

    :cond_a
    iget-wide v0, v15, Landroidx/appcompat/view/menu/js0;->o:J

    int-to-long v2, v13

    mul-long/2addr v0, v2

    int-to-long v2, v14

    add-long/2addr v0, v2

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/view/menu/v8;->B(J)V

    sget-object v0, Landroidx/appcompat/view/menu/bb;->a:Landroidx/appcompat/view/menu/bb$b;

    sget-object v1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/bb$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Landroidx/appcompat/view/menu/bb;->a:Landroidx/appcompat/view/menu/bb$b;

    sget-object v1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/bb$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_c
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ze;->b()V

    sget-object v0, Landroidx/appcompat/view/menu/bb;->a:Landroidx/appcompat/view/menu/bb$b;

    sget-object v1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/bb$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final E0(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/cf;->z:Landroidx/appcompat/view/menu/u8;

    sget-object v1, Landroidx/appcompat/view/menu/u8;->o:Landroidx/appcompat/view/menu/u8;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/cf;->C0(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/cf;->D0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public V()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/cf;->z:Landroidx/appcompat/view/menu/u8;

    sget-object v1, Landroidx/appcompat/view/menu/u8;->n:Landroidx/appcompat/view/menu/u8;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q(Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/cf;->B0(Landroidx/appcompat/view/menu/cf;Ljava/lang/Object;Landroidx/appcompat/view/menu/xg;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/cf;->E0(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
