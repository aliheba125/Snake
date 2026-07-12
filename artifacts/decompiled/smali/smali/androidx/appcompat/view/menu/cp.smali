.class public abstract Landroidx/appcompat/view/menu/cp;
.super Landroidx/appcompat/view/menu/dp;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/sk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/cp$a;
    }
.end annotation


# static fields
.field public static final r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final t:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _delayed:Ljava/lang/Object;

.field private volatile _isCompleted:I

.field private volatile _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_queue"

    const-class v1, Landroidx/appcompat/view/menu/cp;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/cp;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_delayed"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/cp;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_isCompleted"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/cp;->t:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/dp;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/cp;->_isCompleted:I

    return-void
.end method

.method private final U()Z
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/cp;->t:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final A(Landroidx/appcompat/view/menu/kh;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/cp;->S(Ljava/lang/Runnable;)V

    return-void
.end method

.method public I()J
    .locals 6

    invoke-super {p0}, Landroidx/appcompat/view/menu/bp;->I()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/cp;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    instance-of v1, v0, Landroidx/appcompat/view/menu/da0;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/appcompat/view/menu/da0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/da0;->g()Z

    move-result v0

    if-nez v0, :cond_3

    return-wide v2

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/fp;->a()Landroidx/appcompat/view/menu/my0;

    move-result-object v1

    if-ne v0, v1, :cond_2

    return-wide v4

    :cond_2
    return-wide v2

    :cond_3
    sget-object v0, Landroidx/appcompat/view/menu/cp;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/cp$a;

    return-wide v4
.end method

.method public final Q()V
    .locals 5

    sget-object v0, Landroidx/appcompat/view/menu/cp;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Landroidx/appcompat/view/menu/cp;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-static {}, Landroidx/appcompat/view/menu/fp;->a()Landroidx/appcompat/view/menu/my0;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    instance-of v2, v1, Landroidx/appcompat/view/menu/da0;

    if-eqz v2, :cond_2

    check-cast v1, Landroidx/appcompat/view/menu/da0;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/da0;->d()Z

    return-void

    :cond_2
    invoke-static {}, Landroidx/appcompat/view/menu/fp;->a()Landroidx/appcompat/view/menu/my0;

    move-result-object v2

    if-ne v1, v2, :cond_3

    return-void

    :cond_3
    new-instance v2, Landroidx/appcompat/view/menu/da0;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/view/menu/da0;-><init>(IZ)V

    const-string v3, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"

    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/da0;->a(Ljava/lang/Object;)I

    sget-object v3, Landroidx/appcompat/view/menu/cp;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v2}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final R()Ljava/lang/Runnable;
    .locals 5

    sget-object v0, Landroidx/appcompat/view/menu/cp;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    instance-of v3, v1, Landroidx/appcompat/view/menu/da0;

    if-eqz v3, :cond_3

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }"

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Landroidx/appcompat/view/menu/da0;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/da0;->j()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/appcompat/view/menu/da0;->h:Landroidx/appcompat/view/menu/my0;

    if-eq v3, v4, :cond_2

    check-cast v3, Ljava/lang/Runnable;

    return-object v3

    :cond_2
    sget-object v3, Landroidx/appcompat/view/menu/cp;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/da0;->i()Landroidx/appcompat/view/menu/da0;

    move-result-object v2

    invoke-static {v3, p0, v1, v2}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Landroidx/appcompat/view/menu/fp;->a()Landroidx/appcompat/view/menu/my0;

    move-result-object v3

    if-ne v1, v3, :cond_4

    return-object v2

    :cond_4
    sget-object v3, Landroidx/appcompat/view/menu/cp;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v2}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"

    invoke-static {v1, v0}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    return-object v1
.end method

.method public S(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/cp;->T(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/dp;->P()V

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/mj;->u:Landroidx/appcompat/view/menu/mj;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/mj;->S(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final T(Ljava/lang/Runnable;)Z
    .locals 6

    sget-object v0, Landroidx/appcompat/view/menu/cp;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Landroidx/appcompat/view/menu/cp;->U()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x1

    if-nez v1, :cond_2

    sget-object v1, Landroidx/appcompat/view/menu/cp;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-static {v1, p0, v3, p1}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_2
    instance-of v4, v1, Landroidx/appcompat/view/menu/da0;

    if-eqz v4, :cond_6

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }"

    invoke-static {v1, v4}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/view/menu/da0;

    invoke-virtual {v4, p1}, Landroidx/appcompat/view/menu/da0;->a(Ljava/lang/Object;)I

    move-result v5

    if-eqz v5, :cond_5

    if-eq v5, v2, :cond_4

    const/4 v1, 0x2

    if-eq v5, v1, :cond_3

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    sget-object v2, Landroidx/appcompat/view/menu/cp;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/da0;->i()Landroidx/appcompat/view/menu/da0;

    move-result-object v3

    invoke-static {v2, p0, v1, v3}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return v2

    :cond_6
    invoke-static {}, Landroidx/appcompat/view/menu/fp;->a()Landroidx/appcompat/view/menu/my0;

    move-result-object v4

    if-ne v1, v4, :cond_7

    return v3

    :cond_7
    new-instance v3, Landroidx/appcompat/view/menu/da0;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v2}, Landroidx/appcompat/view/menu/da0;-><init>(IZ)V

    const-string v4, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"

    invoke-static {v1, v4}, Landroidx/appcompat/view/menu/z50;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/da0;->a(Ljava/lang/Object;)I

    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/da0;->a(Ljava/lang/Object;)I

    sget-object v4, Landroidx/appcompat/view/menu/cp;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, p0, v1, v3}, Landroidx/appcompat/view/menu/q;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2
.end method

.method public V()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bp;->M()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/cp;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/cp$a;

    sget-object v0, Landroidx/appcompat/view/menu/cp;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    instance-of v3, v0, Landroidx/appcompat/view/menu/da0;

    if-eqz v3, :cond_2

    check-cast v0, Landroidx/appcompat/view/menu/da0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/da0;->g()Z

    move-result v1

    goto :goto_1

    :cond_2
    invoke-static {}, Landroidx/appcompat/view/menu/fp;->a()Landroidx/appcompat/view/menu/my0;

    move-result-object v3

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public W()J
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/bp;->N()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/cp;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/cp$a;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp;->R()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-wide v1

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp;->I()J

    move-result-wide v0

    return-wide v0
.end method

.method public final X()V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/w;->a()Landroidx/appcompat/view/menu/v;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    sget-object v0, Landroidx/appcompat/view/menu/cp;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/cp$a;

    return-void
.end method

.method public final Y()V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/cp;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Landroidx/appcompat/view/menu/cp;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final Z(Z)V
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/cp;->t:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    return-void
.end method

.method public shutdown()V
    .locals 4

    sget-object v0, Landroidx/appcompat/view/menu/j01;->a:Landroidx/appcompat/view/menu/j01;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/j01;->b()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/cp;->Z(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp;->Q()V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp;->W()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/cp;->X()V

    return-void
.end method
