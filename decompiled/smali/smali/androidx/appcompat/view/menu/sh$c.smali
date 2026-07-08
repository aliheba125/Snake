.class public final Landroidx/appcompat/view/menu/sh$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/sh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# static fields
.field public static final u:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile indexInArray:I

.field public final m:Landroidx/appcompat/view/menu/oa1;

.field public final n:Landroidx/appcompat/view/menu/bo0;

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field public o:Landroidx/appcompat/view/menu/sh$d;

.field public p:J

.field public q:J

.field public r:I

.field public s:Z

.field public final synthetic t:Landroidx/appcompat/view/menu/sh;

.field private volatile workerCtl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroidx/appcompat/view/menu/sh$c;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/sh$c;->u:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/sh;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 3
    new-instance p1, Landroidx/appcompat/view/menu/oa1;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/oa1;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/sh$c;->m:Landroidx/appcompat/view/menu/oa1;

    .line 4
    new-instance p1, Landroidx/appcompat/view/menu/bo0;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/bo0;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/sh$c;->n:Landroidx/appcompat/view/menu/bo0;

    .line 5
    sget-object p1, Landroidx/appcompat/view/menu/sh$d;->p:Landroidx/appcompat/view/menu/sh$d;

    iput-object p1, p0, Landroidx/appcompat/view/menu/sh$c;->o:Landroidx/appcompat/view/menu/sh$d;

    .line 6
    sget-object p1, Landroidx/appcompat/view/menu/sh;->x:Landroidx/appcompat/view/menu/my0;

    iput-object p1, p0, Landroidx/appcompat/view/menu/sh$c;->nextParkedWorker:Ljava/lang/Object;

    .line 7
    sget-object p1, Landroidx/appcompat/view/menu/qn0;->m:Landroidx/appcompat/view/menu/qn0$a;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/qn0$a;->b()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/sh$c;->r:I

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/sh;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/sh$c;-><init>(Landroidx/appcompat/view/menu/sh;)V

    .line 9
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/sh$c;->q(I)V

    return-void
.end method

.method public static final synthetic a(Landroidx/appcompat/view/menu/sh$c;)Landroidx/appcompat/view/menu/sh;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    return-object p0
.end method

.method public static final j()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/sh$c;->u:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method


# virtual methods
.method public final b(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    invoke-static {}, Landroidx/appcompat/view/menu/sh;->a()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    const-wide/32 v1, -0x200000

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    iget-object p1, p0, Landroidx/appcompat/view/menu/sh$c;->o:Landroidx/appcompat/view/menu/sh$d;

    sget-object v0, Landroidx/appcompat/view/menu/sh$d;->q:Landroidx/appcompat/view/menu/sh$d;

    if-eq p1, v0, :cond_1

    sget-object p1, Landroidx/appcompat/view/menu/sh$d;->p:Landroidx/appcompat/view/menu/sh$d;

    iput-object p1, p0, Landroidx/appcompat/view/menu/sh$c;->o:Landroidx/appcompat/view/menu/sh$d;

    :cond_1
    return-void
.end method

.method public final c(I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Landroidx/appcompat/view/menu/sh$d;->n:Landroidx/appcompat/view/menu/sh$d;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/sh$c;->u(Landroidx/appcompat/view/menu/sh$d;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/sh;->w()V

    :cond_1
    return-void
.end method

.method public final d(Landroidx/appcompat/view/menu/yy0;)V
    .locals 2

    iget-object v0, p1, Landroidx/appcompat/view/menu/yy0;->n:Landroidx/appcompat/view/menu/cz0;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/cz0;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/sh$c;->k(I)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/sh$c;->c(I)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/sh;->s(Landroidx/appcompat/view/menu/yy0;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/sh$c;->b(I)V

    return-void
.end method

.method public final e(Z)Landroidx/appcompat/view/menu/yy0;
    .locals 1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    iget p1, p1, Landroidx/appcompat/view/menu/sh;->m:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/sh$c;->m(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sh$c;->o()Landroidx/appcompat/view/menu/yy0;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/sh$c;->m:Landroidx/appcompat/view/menu/oa1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/oa1;->g()Landroidx/appcompat/view/menu/yy0;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sh$c;->o()Landroidx/appcompat/view/menu/yy0;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sh$c;->o()Landroidx/appcompat/view/menu/yy0;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/sh$c;->v(I)Landroidx/appcompat/view/menu/yy0;

    move-result-object p1

    return-object p1
.end method

.method public final f()Landroidx/appcompat/view/menu/yy0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/sh$c;->m:Landroidx/appcompat/view/menu/oa1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/oa1;->h()Landroidx/appcompat/view/menu/yy0;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    iget-object v0, v0, Landroidx/appcompat/view/menu/sh;->r:Landroidx/appcompat/view/menu/px;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ca0;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/yy0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/sh$c;->v(I)Landroidx/appcompat/view/menu/yy0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final g(Z)Landroidx/appcompat/view/menu/yy0;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sh$c;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/sh$c;->e(Z)Landroidx/appcompat/view/menu/yy0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sh$c;->f()Landroidx/appcompat/view/menu/yy0;

    move-result-object p1

    return-object p1
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/sh$c;->indexInArray:I

    return v0
.end method

.method public final i()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/sh$c;->nextParkedWorker:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(I)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/sh$c;->p:J

    iget-object p1, p0, Landroidx/appcompat/view/menu/sh$c;->o:Landroidx/appcompat/view/menu/sh$d;

    sget-object v0, Landroidx/appcompat/view/menu/sh$d;->o:Landroidx/appcompat/view/menu/sh$d;

    if-ne p1, v0, :cond_0

    sget-object p1, Landroidx/appcompat/view/menu/sh$d;->n:Landroidx/appcompat/view/menu/sh$d;

    iput-object p1, p0, Landroidx/appcompat/view/menu/sh$c;->o:Landroidx/appcompat/view/menu/sh$d;

    :cond_0
    return-void
.end method

.method public final l()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/sh$c;->nextParkedWorker:Ljava/lang/Object;

    sget-object v1, Landroidx/appcompat/view/menu/sh;->x:Landroidx/appcompat/view/menu/my0;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m(I)I
    .locals 3

    iget v0, p0, Landroidx/appcompat/view/menu/sh$c;->r:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/view/menu/sh$c;->r:I

    add-int/lit8 v1, p1, -0x1

    and-int v2, v1, p1

    if-nez v2, :cond_0

    and-int p1, v0, v1

    return p1

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/2addr v0, p1

    return v0
.end method

.method public final n()V
    .locals 6

    iget-wide v0, p0, Landroidx/appcompat/view/menu/sh$c;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v4, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    iget-wide v4, v4, Landroidx/appcompat/view/menu/sh;->o:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/appcompat/view/menu/sh$c;->p:J

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    iget-wide v0, v0, Landroidx/appcompat/view/menu/sh;->o:J

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Landroidx/appcompat/view/menu/sh$c;->p:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iput-wide v2, p0, Landroidx/appcompat/view/menu/sh$c;->p:J

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sh$c;->w()V

    :cond_1
    return-void
.end method

.method public final o()Landroidx/appcompat/view/menu/yy0;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/sh$c;->m(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    iget-object v0, v0, Landroidx/appcompat/view/menu/sh;->q:Landroidx/appcompat/view/menu/px;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ca0;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/yy0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    iget-object v0, v0, Landroidx/appcompat/view/menu/sh;->r:Landroidx/appcompat/view/menu/px;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ca0;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/yy0;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    iget-object v0, v0, Landroidx/appcompat/view/menu/sh;->r:Landroidx/appcompat/view/menu/px;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ca0;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/yy0;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    iget-object v0, v0, Landroidx/appcompat/view/menu/sh;->q:Landroidx/appcompat/view/menu/px;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ca0;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/yy0;

    return-object v0
.end method

.method public final p()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/sh;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/appcompat/view/menu/sh$c;->o:Landroidx/appcompat/view/menu/sh$d;

    sget-object v3, Landroidx/appcompat/view/menu/sh$d;->q:Landroidx/appcompat/view/menu/sh$d;

    if-eq v2, v3, :cond_3

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/sh$c;->s:Z

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/sh$c;->g(Z)Landroidx/appcompat/view/menu/yy0;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    iput-wide v3, p0, Landroidx/appcompat/view/menu/sh$c;->q:J

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/sh$c;->d(Landroidx/appcompat/view/menu/yy0;)V

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/sh$c;->s:Z

    iget-wide v5, p0, Landroidx/appcompat/view/menu/sh$c;->q:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Landroidx/appcompat/view/menu/sh$d;->o:Landroidx/appcompat/view/menu/sh$d;

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/sh$c;->u(Landroidx/appcompat/view/menu/sh$d;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v1, p0, Landroidx/appcompat/view/menu/sh$c;->q:J

    invoke-static {v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    iput-wide v3, p0, Landroidx/appcompat/view/menu/sh$c;->q:J

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sh$c;->t()V

    goto :goto_1

    :cond_3
    sget-object v0, Landroidx/appcompat/view/menu/sh$d;->q:Landroidx/appcompat/view/menu/sh$d;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/sh$c;->u(Landroidx/appcompat/view/menu/sh$d;)Z

    return-void
.end method

.method public final q(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    iget-object v1, v1, Landroidx/appcompat/view/menu/sh;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput p1, p0, Landroidx/appcompat/view/menu/sh$c;->indexInArray:I

    return-void
.end method

.method public final r(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/sh$c;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sh$c;->p()V

    return-void
.end method

.method public final s()Z
    .locals 9

    iget-object v0, p0, Landroidx/appcompat/view/menu/sh$c;->o:Landroidx/appcompat/view/menu/sh$d;

    sget-object v1, Landroidx/appcompat/view/menu/sh$d;->m:Landroidx/appcompat/view/menu/sh$d;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    invoke-static {}, Landroidx/appcompat/view/menu/sh;->a()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    const-wide v3, 0x7ffffc0000000000L

    and-long/2addr v3, v5

    const/16 v7, 0x2a

    shr-long/2addr v3, v7

    long-to-int v3, v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-wide v3, 0x40000000000L

    sub-long v7, v5, v3

    invoke-static {}, Landroidx/appcompat/view/menu/sh;->a()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Landroidx/appcompat/view/menu/sh$d;->m:Landroidx/appcompat/view/menu/sh$d;

    iput-object v0, p0, Landroidx/appcompat/view/menu/sh$c;->o:Landroidx/appcompat/view/menu/sh$d;

    :goto_0
    return v2
.end method

.method public final t()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sh$c;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/sh;->p(Landroidx/appcompat/view/menu/sh$c;)Z

    return-void

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/sh$c;->u:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sh$c;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/appcompat/view/menu/sh$c;->u:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/sh;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/sh$c;->o:Landroidx/appcompat/view/menu/sh$d;

    sget-object v2, Landroidx/appcompat/view/menu/sh$d;->q:Landroidx/appcompat/view/menu/sh$d;

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Landroidx/appcompat/view/menu/sh$d;->o:Landroidx/appcompat/view/menu/sh$d;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/sh$c;->u(Landroidx/appcompat/view/menu/sh$d;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sh$c;->n()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final u(Landroidx/appcompat/view/menu/sh$d;)Z
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/sh$c;->o:Landroidx/appcompat/view/menu/sh$d;

    sget-object v1, Landroidx/appcompat/view/menu/sh$d;->m:Landroidx/appcompat/view/menu/sh$d;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    invoke-static {}, Landroidx/appcompat/view/menu/sh;->a()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    const-wide v4, 0x40000000000L

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_1
    if-eq v0, p1, :cond_2

    iput-object p1, p0, Landroidx/appcompat/view/menu/sh$c;->o:Landroidx/appcompat/view/menu/sh$d;

    :cond_2
    return v1
.end method

.method public final v(I)Landroidx/appcompat/view/menu/yy0;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    invoke-static {}, Landroidx/appcompat/view/menu/sh;->a()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/sh$c;->m(I)I

    move-result v2

    iget-object v4, v0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-wide v8, v5

    :goto_0
    const-wide/16 v10, 0x0

    if-ge v7, v1, :cond_5

    const/4 v12, 0x1

    add-int/2addr v2, v12

    if-le v2, v1, :cond_1

    move v2, v12

    :cond_1
    iget-object v12, v4, Landroidx/appcompat/view/menu/sh;->s:Landroidx/appcompat/view/menu/ap0;

    invoke-virtual {v12, v2}, Landroidx/appcompat/view/menu/ap0;->b(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/view/menu/sh$c;

    if-eqz v12, :cond_3

    if-eq v12, v0, :cond_3

    iget-object v12, v12, Landroidx/appcompat/view/menu/sh$c;->m:Landroidx/appcompat/view/menu/oa1;

    iget-object v13, v0, Landroidx/appcompat/view/menu/sh$c;->n:Landroidx/appcompat/view/menu/bo0;

    move/from16 v14, p1

    invoke-virtual {v12, v14, v13}, Landroidx/appcompat/view/menu/oa1;->n(ILandroidx/appcompat/view/menu/bo0;)J

    move-result-wide v12

    const-wide/16 v15, -0x1

    cmp-long v15, v12, v15

    if-nez v15, :cond_2

    iget-object v1, v0, Landroidx/appcompat/view/menu/sh$c;->n:Landroidx/appcompat/view/menu/bo0;

    iget-object v2, v1, Landroidx/appcompat/view/menu/bo0;->m:Ljava/lang/Object;

    check-cast v2, Landroidx/appcompat/view/menu/yy0;

    iput-object v3, v1, Landroidx/appcompat/view/menu/bo0;->m:Ljava/lang/Object;

    return-object v2

    :cond_2
    cmp-long v10, v12, v10

    if-lez v10, :cond_4

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_1

    :cond_3
    move/from16 v14, p1

    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    cmp-long v1, v8, v5

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move-wide v8, v10

    :goto_2
    iput-wide v8, v0, Landroidx/appcompat/view/menu/sh$c;->q:J

    return-object v3
.end method

.method public final w()V
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/view/menu/sh$c;->t:Landroidx/appcompat/view/menu/sh;

    iget-object v1, v0, Landroidx/appcompat/view/menu/sh;->s:Landroidx/appcompat/view/menu/ap0;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/sh;->isTerminated()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroidx/appcompat/view/menu/sh;->a()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/32 v4, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    iget v3, v0, Landroidx/appcompat/view/menu/sh;->m:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v2, v3, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    :try_start_2
    sget-object v2, Landroidx/appcompat/view/menu/sh$c;->u:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, -0x1

    const/4 v6, 0x1

    invoke-virtual {v2, p0, v3, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    :try_start_3
    iget v2, p0, Landroidx/appcompat/view/menu/sh$c;->indexInArray:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroidx/appcompat/view/menu/sh$c;->q(I)V

    invoke-virtual {v0, p0, v2, v3}, Landroidx/appcompat/view/menu/sh;->r(Landroidx/appcompat/view/menu/sh$c;II)V

    invoke-static {}, Landroidx/appcompat/view/menu/sh;->a()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v6

    and-long v3, v6, v4

    long-to-int v3, v3

    if-eq v3, v2, :cond_3

    iget-object v4, v0, Landroidx/appcompat/view/menu/sh;->s:Landroidx/appcompat/view/menu/ap0;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/ap0;->b(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    check-cast v4, Landroidx/appcompat/view/menu/sh$c;

    iget-object v5, v0, Landroidx/appcompat/view/menu/sh;->s:Landroidx/appcompat/view/menu/ap0;

    invoke-virtual {v5, v2, v4}, Landroidx/appcompat/view/menu/ap0;->c(ILjava/lang/Object;)V

    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/sh$c;->q(I)V

    invoke-virtual {v0, v4, v3, v2}, Landroidx/appcompat/view/menu/sh;->r(Landroidx/appcompat/view/menu/sh$c;II)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/sh;->s:Landroidx/appcompat/view/menu/ap0;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/view/menu/ap0;->c(ILjava/lang/Object;)V

    sget-object v0, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    sget-object v0, Landroidx/appcompat/view/menu/sh$d;->q:Landroidx/appcompat/view/menu/sh$d;

    iput-object v0, p0, Landroidx/appcompat/view/menu/sh$c;->o:Landroidx/appcompat/view/menu/sh$d;

    return-void

    :goto_1
    monitor-exit v1

    throw v0
.end method
