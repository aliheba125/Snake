.class public abstract Landroidx/appcompat/view/menu/z7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/z7$a;,
        Landroidx/appcompat/view/menu/z7$b;,
        Landroidx/appcompat/view/menu/z7$d;,
        Landroidx/appcompat/view/menu/z7$c;,
        Landroidx/appcompat/view/menu/z7$e;
    }
.end annotation


# static fields
.field public static final O:[Ljava/lang/String;

.field public static final P:[Landroidx/appcompat/view/menu/hr;


# instance fields
.field public A:Landroidx/appcompat/view/menu/z7$c;

.field public B:Landroid/os/IInterface;

.field public final C:Ljava/util/ArrayList;

.field public D:Landroidx/appcompat/view/menu/xo1;

.field public E:I

.field public final F:Landroidx/appcompat/view/menu/z7$a;

.field public final G:Landroidx/appcompat/view/menu/z7$b;

.field public final H:I

.field public final I:Ljava/lang/String;

.field public volatile J:Ljava/lang/String;

.field public K:Landroidx/appcompat/view/menu/ef;

.field public L:Z

.field public volatile M:Landroidx/appcompat/view/menu/x02;

.field public N:Ljava/util/concurrent/atomic/AtomicInteger;

.field public l:I

.field public m:J

.field public n:J

.field public o:I

.field public p:J

.field public volatile q:Ljava/lang/String;

.field public r:Landroidx/appcompat/view/menu/af2;

.field public final s:Landroid/content/Context;

.field public final t:Landroid/os/Looper;

.field public final u:Landroidx/appcompat/view/menu/rx;

.field public final v:Landroidx/appcompat/view/menu/yx;

.field public final w:Landroid/os/Handler;

.field public final x:Ljava/lang/Object;

.field public final y:Ljava/lang/Object;

.field public z:Landroidx/appcompat/view/menu/g10;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/appcompat/view/menu/hr;

    sput-object v0, Landroidx/appcompat/view/menu/z7;->P:[Landroidx/appcompat/view/menu/hr;

    const-string v0, "service_esmobile"

    const-string v1, "service_googleme"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/z7;->O:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILandroidx/appcompat/view/menu/z7$a;Landroidx/appcompat/view/menu/z7$b;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroidx/appcompat/view/menu/rx;->b(Landroid/content/Context;)Landroidx/appcompat/view/menu/rx;

    move-result-object v3

    .line 2
    invoke-static {}, Landroidx/appcompat/view/menu/yx;->f()Landroidx/appcompat/view/menu/yx;

    move-result-object v4

    .line 3
    invoke-static {p4}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p5}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 5
    invoke-direct/range {v0 .. v8}, Landroidx/appcompat/view/menu/z7;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/appcompat/view/menu/rx;Landroidx/appcompat/view/menu/yx;ILandroidx/appcompat/view/menu/z7$a;Landroidx/appcompat/view/menu/z7$b;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/appcompat/view/menu/rx;Landroidx/appcompat/view/menu/yx;ILandroidx/appcompat/view/menu/z7$a;Landroidx/appcompat/view/menu/z7$b;Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/z7;->q:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/z7;->x:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/z7;->y:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/z7;->C:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput v1, p0, Landroidx/appcompat/view/menu/z7;->E:I

    iput-object v0, p0, Landroidx/appcompat/view/menu/z7;->K:Landroidx/appcompat/view/menu/ef;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/z7;->L:Z

    iput-object v0, p0, Landroidx/appcompat/view/menu/z7;->M:Landroidx/appcompat/view/menu/x02;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/z7;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    .line 8
    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/appcompat/view/menu/z7;->s:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    .line 9
    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/view/menu/z7;->t:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    .line 10
    invoke-static {p3, p1}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/view/menu/z7;->u:Landroidx/appcompat/view/menu/rx;

    const-string p1, "API availability must not be null"

    .line 11
    invoke-static {p4, p1}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Landroidx/appcompat/view/menu/z7;->v:Landroidx/appcompat/view/menu/yx;

    new-instance p1, Landroidx/appcompat/view/menu/wh1;

    .line 12
    invoke-direct {p1, p0, p2}, Landroidx/appcompat/view/menu/wh1;-><init>(Landroidx/appcompat/view/menu/z7;Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/z7;->w:Landroid/os/Handler;

    iput p5, p0, Landroidx/appcompat/view/menu/z7;->H:I

    iput-object p6, p0, Landroidx/appcompat/view/menu/z7;->F:Landroidx/appcompat/view/menu/z7$a;

    iput-object p7, p0, Landroidx/appcompat/view/menu/z7;->G:Landroidx/appcompat/view/menu/z7$b;

    iput-object p8, p0, Landroidx/appcompat/view/menu/z7;->I:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic T(Landroidx/appcompat/view/menu/z7;)Landroidx/appcompat/view/menu/ef;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/z7;->K:Landroidx/appcompat/view/menu/ef;

    return-object p0
.end method

.method public static bridge synthetic U(Landroidx/appcompat/view/menu/z7;)Landroidx/appcompat/view/menu/z7$a;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/z7;->F:Landroidx/appcompat/view/menu/z7$a;

    return-object p0
.end method

.method public static bridge synthetic V(Landroidx/appcompat/view/menu/z7;)Landroidx/appcompat/view/menu/z7$b;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/z7;->G:Landroidx/appcompat/view/menu/z7$b;

    return-object p0
.end method

.method public static bridge synthetic W(Landroidx/appcompat/view/menu/z7;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/z7;->y:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic Y(Landroidx/appcompat/view/menu/z7;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/z7;->C:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic Z(Landroidx/appcompat/view/menu/z7;Landroidx/appcompat/view/menu/ef;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/z7;->K:Landroidx/appcompat/view/menu/ef;

    return-void
.end method

.method public static bridge synthetic a0(Landroidx/appcompat/view/menu/z7;Landroidx/appcompat/view/menu/g10;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/z7;->z:Landroidx/appcompat/view/menu/g10;

    return-void
.end method

.method public static bridge synthetic b0(Landroidx/appcompat/view/menu/z7;ILandroid/os/IInterface;)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/z7;->i0(ILandroid/os/IInterface;)V

    return-void
.end method

.method public static bridge synthetic c0(Landroidx/appcompat/view/menu/z7;Landroidx/appcompat/view/menu/x02;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/z7;->M:Landroidx/appcompat/view/menu/x02;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->S()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Landroidx/appcompat/view/menu/x02;->p:Landroidx/appcompat/view/menu/ff;

    invoke-static {}, Landroidx/appcompat/view/menu/up0;->b()Landroidx/appcompat/view/menu/up0;

    move-result-object p1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ff;->p()Landroidx/appcompat/view/menu/vp0;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/up0;->c(Landroidx/appcompat/view/menu/vp0;)V

    :cond_1
    return-void
.end method

.method public static bridge synthetic d0(Landroidx/appcompat/view/menu/z7;I)V
    .locals 2

    iget-object p1, p0, Landroidx/appcompat/view/menu/z7;->x:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Landroidx/appcompat/view/menu/z7;->E:I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/z7;->L:Z

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->w:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/appcompat/view/menu/z7;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/16 v1, 0x10

    invoke-virtual {v0, p1, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static bridge synthetic f0(Landroidx/appcompat/view/menu/z7;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/appcompat/view/menu/z7;->L:Z

    return p0
.end method

.method public static bridge synthetic g0(Landroidx/appcompat/view/menu/z7;IILandroid/os/IInterface;)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/appcompat/view/menu/z7;->E:I

    if-eq v1, p1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/view/menu/z7;->i0(ILandroid/os/IInterface;)V

    monitor-exit v0

    const/4 p0, 0x1

    :goto_0
    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static bridge synthetic h0(Landroidx/appcompat/view/menu/z7;)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/z7;->L:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->E()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :catch_0
    :goto_0
    return v1
.end method


# virtual methods
.method public A()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public C()Ljava/util/Set;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final D()Landroid/os/IInterface;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/appcompat/view/menu/z7;->E:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->r()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/z7;->B:Landroid/os/IInterface;

    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract E()Ljava/lang/String;
.end method

.method public abstract F()Ljava/lang/String;
.end method

.method public G()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method public H()Landroidx/appcompat/view/menu/ff;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->M:Landroidx/appcompat/view/menu/x02;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/x02;->p:Landroidx/appcompat/view/menu/ff;

    return-object v0
.end method

.method public I()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->e()I

    move-result v0

    const v1, 0xc9e4920

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public J()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->M:Landroidx/appcompat/view/menu/x02;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public K(Landroid/os/IInterface;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/z7;->n:J

    return-void
.end method

.method public L(Landroidx/appcompat/view/menu/ef;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ef;->d()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/z7;->o:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/z7;->p:J

    return-void
.end method

.method public M(I)V
    .locals 2

    iput p1, p0, Landroidx/appcompat/view/menu/z7;->l:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/z7;->m:J

    return-void
.end method

.method public N(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->w:Landroid/os/Handler;

    new-instance v1, Landroidx/appcompat/view/menu/cr1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/appcompat/view/menu/cr1;-><init>(Landroidx/appcompat/view/menu/z7;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, -0x1

    invoke-virtual {v0, p1, p4, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public P(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/z7;->J:Ljava/lang/String;

    return-void
.end method

.method public Q(I)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->w:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/appcompat/view/menu/z7;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public R(Landroidx/appcompat/view/menu/z7$c;ILandroid/app/PendingIntent;)V
    .locals 2

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/appcompat/view/menu/z7;->A:Landroidx/appcompat/view/menu/z7$c;

    iget-object p1, p0, Landroidx/appcompat/view/menu/z7;->w:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public S()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final X()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->I:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->s:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a()Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/appcompat/view/menu/z7;->E:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/z7;->q:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->n()V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract e()I
.end method

.method public final e0(ILandroid/os/Bundle;I)V
    .locals 2

    iget-object p2, p0, Landroidx/appcompat/view/menu/z7;->w:Landroid/os/Handler;

    new-instance v0, Landroidx/appcompat/view/menu/gu1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/appcompat/view/menu/gu1;-><init>(Landroidx/appcompat/view/menu/z7;ILandroid/os/Bundle;)V

    const/4 p1, 0x7

    const/4 v1, -0x1

    invoke-virtual {p2, p1, p3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public f()Z
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/appcompat/view/menu/z7;->E:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()[Landroidx/appcompat/view/menu/hr;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->M:Landroidx/appcompat/view/menu/x02;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/view/menu/x02;->n:[Landroidx/appcompat/view/menu/hr;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->r:Landroidx/appcompat/view/menu/af2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/af2;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i0(ILandroid/os/IInterface;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-nez p2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->a(Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Landroidx/appcompat/view/menu/z7;->E:I

    iput-object p2, p0, Landroidx/appcompat/view/menu/z7;->B:Landroid/os/IInterface;

    const/4 v3, 0x0

    if-eq p1, v1, :cond_9

    const/4 v1, 0x2

    const/4 v4, 0x3

    if-eq p1, v1, :cond_4

    if-eq p1, v4, :cond_4

    if-eq p1, v2, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-static {p2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/z7;->K(Landroid/os/IInterface;)V

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_4
    iget-object v9, p0, Landroidx/appcompat/view/menu/z7;->D:Landroidx/appcompat/view/menu/xo1;

    if-eqz v9, :cond_5

    iget-object p1, p0, Landroidx/appcompat/view/menu/z7;->r:Landroidx/appcompat/view/menu/af2;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/af2;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/af2;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/appcompat/view/menu/z7;->u:Landroidx/appcompat/view/menu/rx;

    iget-object p1, p0, Landroidx/appcompat/view/menu/z7;->r:Landroidx/appcompat/view/menu/af2;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/af2;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/appcompat/view/menu/z7;->r:Landroidx/appcompat/view/menu/af2;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/af2;->b()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Landroidx/appcompat/view/menu/z7;->r:Landroidx/appcompat/view/menu/af2;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/af2;->a()I

    move-result v8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->X()Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Landroidx/appcompat/view/menu/z7;->r:Landroidx/appcompat/view/menu/af2;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/af2;->d()Z

    move-result v11

    invoke-virtual/range {v5 .. v11}, Landroidx/appcompat/view/menu/rx;->e(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/z7;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_5
    new-instance p1, Landroidx/appcompat/view/menu/xo1;

    iget-object p2, p0, Landroidx/appcompat/view/menu/z7;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Landroidx/appcompat/view/menu/xo1;-><init>(Landroidx/appcompat/view/menu/z7;I)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/z7;->D:Landroidx/appcompat/view/menu/xo1;

    iget p2, p0, Landroidx/appcompat/view/menu/z7;->E:I

    if-ne p2, v4, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->B()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance p2, Landroidx/appcompat/view/menu/af2;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->y()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->B()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {}, Landroidx/appcompat/view/menu/rx;->a()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Landroidx/appcompat/view/menu/af2;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto :goto_2

    :cond_6
    new-instance p2, Landroidx/appcompat/view/menu/af2;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->G()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->F()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Landroidx/appcompat/view/menu/rx;->a()I

    move-result v8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->I()Z

    move-result v9

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Landroidx/appcompat/view/menu/af2;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    :goto_2
    iput-object p2, p0, Landroidx/appcompat/view/menu/z7;->r:Landroidx/appcompat/view/menu/af2;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/af2;->d()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->e()I

    move-result p2

    const v1, 0x1110e58

    if-lt p2, v1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    iget-object v1, p0, Landroidx/appcompat/view/menu/z7;->r:Landroidx/appcompat/view/menu/af2;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/af2;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    iget-object p2, p0, Landroidx/appcompat/view/menu/z7;->u:Landroidx/appcompat/view/menu/rx;

    iget-object v1, p0, Landroidx/appcompat/view/menu/z7;->r:Landroidx/appcompat/view/menu/af2;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/af2;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/appcompat/view/menu/z7;->r:Landroidx/appcompat/view/menu/af2;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/af2;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroidx/appcompat/view/menu/z7;->r:Landroidx/appcompat/view/menu/af2;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/af2;->a()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->X()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroidx/appcompat/view/menu/z7;->r:Landroidx/appcompat/view/menu/af2;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/af2;->d()Z

    move-result v6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->w()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v8, Landroidx/appcompat/view/menu/l92;

    invoke-direct {v8, v1, v2, v4, v6}, Landroidx/appcompat/view/menu/l92;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p2, v8, p1, v5, v7}, Landroidx/appcompat/view/menu/rx;->f(Landroidx/appcompat/view/menu/l92;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Landroidx/appcompat/view/menu/z7;->r:Landroidx/appcompat/view/menu/af2;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/af2;->c()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroidx/appcompat/view/menu/z7;->r:Landroidx/appcompat/view/menu/af2;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/af2;->b()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to connect to service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/appcompat/view/menu/z7;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/16 p2, 0x10

    invoke-virtual {p0, p2, v3, p1}, Landroidx/appcompat/view/menu/z7;->e0(ILandroid/os/Bundle;I)V

    goto :goto_4

    :cond_9
    iget-object v8, p0, Landroidx/appcompat/view/menu/z7;->D:Landroidx/appcompat/view/menu/xo1;

    if-eqz v8, :cond_a

    iget-object v4, p0, Landroidx/appcompat/view/menu/z7;->u:Landroidx/appcompat/view/menu/rx;

    iget-object p1, p0, Landroidx/appcompat/view/menu/z7;->r:Landroidx/appcompat/view/menu/af2;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/af2;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/appcompat/view/menu/z7;->r:Landroidx/appcompat/view/menu/af2;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/af2;->b()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Landroidx/appcompat/view/menu/z7;->r:Landroidx/appcompat/view/menu/af2;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/af2;->a()I

    move-result v7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->X()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Landroidx/appcompat/view/menu/z7;->r:Landroidx/appcompat/view/menu/af2;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/af2;->d()Z

    move-result v10

    invoke-virtual/range {v4 .. v10}, Landroidx/appcompat/view/menu/rx;->e(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    iput-object v3, p0, Landroidx/appcompat/view/menu/z7;->D:Landroidx/appcompat/view/menu/xo1;

    :cond_a
    :goto_4
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->q:Ljava/lang/String;

    return-object v0
.end method

.method public k(Landroidx/appcompat/view/menu/mz;Ljava/util/Set;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/z7;->A()Landroid/os/Bundle;

    move-result-object v2

    new-instance v15, Landroidx/appcompat/view/menu/mx;

    iget v5, v1, Landroidx/appcompat/view/menu/z7;->H:I

    iget-object v14, v1, Landroidx/appcompat/view/menu/z7;->J:Ljava/lang/String;

    sget v6, Landroidx/appcompat/view/menu/yx;->a:I

    sget-object v9, Landroidx/appcompat/view/menu/mx;->A:[Lcom/google/android/gms/common/api/Scope;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    sget-object v13, Landroidx/appcompat/view/menu/mx;->B:[Landroidx/appcompat/view/menu/hr;

    const/4 v4, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v3, v15

    move-object v12, v13

    move-object/from16 v19, v14

    move/from16 v14, v16

    move-object/from16 v20, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v19

    invoke-direct/range {v3 .. v17}, Landroidx/appcompat/view/menu/mx;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Landroidx/appcompat/view/menu/hr;[Landroidx/appcompat/view/menu/hr;ZIZLjava/lang/String;)V

    iget-object v3, v1, Landroidx/appcompat/view/menu/z7;->s:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v20

    iput-object v3, v4, Landroidx/appcompat/view/menu/mx;->p:Ljava/lang/String;

    iput-object v2, v4, Landroidx/appcompat/view/menu/mx;->s:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    iput-object v0, v4, Landroidx/appcompat/view/menu/mx;->r:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/z7;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/z7;->u()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/accounts/Account;

    const-string v2, "<<default account>>"

    const-string v3, "com.google"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object v0, v4, Landroidx/appcompat/view/menu/mx;->t:Landroid/accounts/Account;

    if-eqz p1, :cond_3

    invoke-interface/range {p1 .. p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v4, Landroidx/appcompat/view/menu/mx;->q:Landroid/os/IBinder;

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/z7;->O()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/z7;->u()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, v4, Landroidx/appcompat/view/menu/mx;->t:Landroid/accounts/Account;

    :cond_3
    :goto_0
    sget-object v0, Landroidx/appcompat/view/menu/z7;->P:[Landroidx/appcompat/view/menu/hr;

    iput-object v0, v4, Landroidx/appcompat/view/menu/mx;->u:[Landroidx/appcompat/view/menu/hr;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/z7;->v()[Landroidx/appcompat/view/menu/hr;

    move-result-object v0

    iput-object v0, v4, Landroidx/appcompat/view/menu/mx;->v:[Landroidx/appcompat/view/menu/hr;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/z7;->S()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, v4, Landroidx/appcompat/view/menu/mx;->y:Z

    :cond_4
    :try_start_0
    iget-object v2, v1, Landroidx/appcompat/view/menu/z7;->y:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, v1, Landroidx/appcompat/view/menu/z7;->z:Landroidx/appcompat/view/menu/g10;

    if-eqz v0, :cond_5

    new-instance v3, Landroidx/appcompat/view/menu/um1;

    iget-object v5, v1, Landroidx/appcompat/view/menu/z7;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-direct {v3, v1, v5}, Landroidx/appcompat/view/menu/um1;-><init>(Landroidx/appcompat/view/menu/z7;I)V

    invoke-interface {v0, v3, v4}, Landroidx/appcompat/view/menu/g10;->Q(Landroidx/appcompat/view/menu/f10;Landroidx/appcompat/view/menu/mx;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_5
    :goto_1
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    iget-object v0, v1, Landroidx/appcompat/view/menu/z7;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v0}, Landroidx/appcompat/view/menu/z7;->N(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void

    :goto_3
    throw v0

    :catch_2
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/z7;->Q(I)V

    return-void
.end method

.method public l(Landroidx/appcompat/view/menu/z7$e;)V
    .locals 0

    invoke-interface {p1}, Landroidx/appcompat/view/menu/z7$e;->a()V

    return-void
.end method

.method public m(Landroidx/appcompat/view/menu/z7$c;)V
    .locals 1

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/mj0;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/appcompat/view/menu/z7;->A:Landroidx/appcompat/view/menu/z7$c;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/z7;->i0(ILandroid/os/IInterface;)V

    return-void
.end method

.method public n()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->C:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/z7;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroidx/appcompat/view/menu/z7;->C:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/kk1;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/kk1;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/z7;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/z7;->y:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroidx/appcompat/view/menu/z7;->z:Landroidx/appcompat/view/menu/g10;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/view/menu/z7;->i0(ILandroid/os/IInterface;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->v:Landroidx/appcompat/view/menu/yx;

    iget-object v1, p0, Landroidx/appcompat/view/menu/z7;->s:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/yx;->h(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/view/menu/z7;->i0(ILandroid/os/IInterface;)V

    new-instance v1, Landroidx/appcompat/view/menu/z7$d;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/z7$d;-><init>(Landroidx/appcompat/view/menu/z7;)V

    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/view/menu/z7;->R(Landroidx/appcompat/view/menu/z7$c;ILandroid/app/PendingIntent;)V

    return-void

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/z7$d;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/z7$d;-><init>(Landroidx/appcompat/view/menu/z7;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/z7;->m(Landroidx/appcompat/view/menu/z7$c;)V

    return-void
.end method

.method public final r()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/z7;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract s(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public u()Landroid/accounts/Account;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public v()[Landroidx/appcompat/view/menu/hr;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/z7;->P:[Landroidx/appcompat/view/menu/hr;

    return-object v0
.end method

.method public w()Ljava/util/concurrent/Executor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public x()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final y()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/z7;->s:Landroid/content/Context;

    return-object v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/z7;->H:I

    return v0
.end method
