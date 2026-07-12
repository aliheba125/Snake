.class public Landroidx/appcompat/view/menu/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final C:Lcom/google/android/gms/common/api/Status;

.field public static final D:Lcom/google/android/gms/common/api/Status;

.field public static final E:Ljava/lang/Object;

.field public static F:Landroidx/appcompat/view/menu/ay;


# instance fields
.field public final A:Landroid/os/Handler;

.field public volatile B:Z

.field public l:J

.field public m:J

.field public n:J

.field public o:Z

.field public p:Landroidx/appcompat/view/menu/lz0;

.field public q:Landroidx/appcompat/view/menu/nz0;

.field public final r:Landroid/content/Context;

.field public final s:Landroidx/appcompat/view/menu/xx;

.field public final t:Landroidx/appcompat/view/menu/od1;

.field public final u:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final v:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final w:Ljava/util/Map;

.field public x:Landroidx/appcompat/view/menu/hb1;

.field public final y:Ljava/util/Set;

.field public final z:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Sign-out occurred while this API call was in progress."

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/ay;->C:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The user must be signed in to make this API call."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/ay;->D:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/ay;->E:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/appcompat/view/menu/xx;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Landroidx/appcompat/view/menu/ay;->l:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Landroidx/appcompat/view/menu/ay;->m:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Landroidx/appcompat/view/menu/ay;->n:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ay;->o:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/ay;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/ay;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x5

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v1, v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/view/menu/ay;->x:Landroidx/appcompat/view/menu/hb1;

    new-instance v1, Landroidx/appcompat/view/menu/q4;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/q4;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/ay;->y:Ljava/util/Set;

    new-instance v1, Landroidx/appcompat/view/menu/q4;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/q4;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/ay;->z:Ljava/util/Set;

    iput-boolean v2, p0, Landroidx/appcompat/view/menu/ay;->B:Z

    iput-object p1, p0, Landroidx/appcompat/view/menu/ay;->r:Landroid/content/Context;

    new-instance v1, Landroidx/appcompat/view/menu/zd1;

    invoke-direct {v1, p2, p0}, Landroidx/appcompat/view/menu/zd1;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/ay;->A:Landroid/os/Handler;

    iput-object p3, p0, Landroidx/appcompat/view/menu/ay;->s:Landroidx/appcompat/view/menu/xx;

    new-instance p2, Landroidx/appcompat/view/menu/od1;

    invoke-direct {p2, p3}, Landroidx/appcompat/view/menu/od1;-><init>(Landroidx/appcompat/view/menu/yx;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/ay;->t:Landroidx/appcompat/view/menu/od1;

    invoke-static {p1}, Landroidx/appcompat/view/menu/rl;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/ay;->B:Z

    :cond_0
    const/4 p1, 0x6

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static bridge synthetic A(Landroidx/appcompat/view/menu/ay;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic B(Landroidx/appcompat/view/menu/ay;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ay;->y:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic C(Landroidx/appcompat/view/menu/ay;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ay;->o:Z

    return-void
.end method

.method public static bridge synthetic e(Landroidx/appcompat/view/menu/ay;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/appcompat/view/menu/ay;->B:Z

    return p0
.end method

.method public static h(Landroidx/appcompat/view/menu/r2;Landroidx/appcompat/view/menu/ef;)Lcom/google/android/gms/common/api/Status;
    .locals 5

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r2;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3f

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "API: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not available on this device. Connection failed with: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/api/Status;-><init>(Landroidx/appcompat/view/menu/ef;Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic n(Landroidx/appcompat/view/menu/ay;)J
    .locals 2

    iget-wide v0, p0, Landroidx/appcompat/view/menu/ay;->l:J

    return-wide v0
.end method

.method public static bridge synthetic o(Landroidx/appcompat/view/menu/ay;)J
    .locals 2

    iget-wide v0, p0, Landroidx/appcompat/view/menu/ay;->m:J

    return-wide v0
.end method

.method public static bridge synthetic p(Landroidx/appcompat/view/menu/ay;)J
    .locals 2

    iget-wide v0, p0, Landroidx/appcompat/view/menu/ay;->n:J

    return-wide v0
.end method

.method public static bridge synthetic q(Landroidx/appcompat/view/menu/ay;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ay;->r:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic r(Landroidx/appcompat/view/menu/ay;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ay;->A:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic s(Landroidx/appcompat/view/menu/ay;)Landroidx/appcompat/view/menu/xx;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ay;->s:Landroidx/appcompat/view/menu/xx;

    return-object p0
.end method

.method public static bridge synthetic t()Lcom/google/android/gms/common/api/Status;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ay;->D:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public static bridge synthetic u(Landroidx/appcompat/view/menu/r2;Landroidx/appcompat/view/menu/ef;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/ay;->h(Landroidx/appcompat/view/menu/r2;Landroidx/appcompat/view/menu/ef;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic v(Landroidx/appcompat/view/menu/ay;)Landroidx/appcompat/view/menu/hb1;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ay;->x:Landroidx/appcompat/view/menu/hb1;

    return-object p0
.end method

.method public static x(Landroid/content/Context;)Landroidx/appcompat/view/menu/ay;
    .locals 4

    sget-object v0, Landroidx/appcompat/view/menu/ay;->E:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/view/menu/ay;->F:Landroidx/appcompat/view/menu/ay;

    if-nez v1, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/rx;->c()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/ay;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroidx/appcompat/view/menu/xx;->m()Landroidx/appcompat/view/menu/xx;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Landroidx/appcompat/view/menu/ay;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/appcompat/view/menu/xx;)V

    sput-object v2, Landroidx/appcompat/view/menu/ay;->F:Landroidx/appcompat/view/menu/ay;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Landroidx/appcompat/view/menu/ay;->F:Landroidx/appcompat/view/menu/ay;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static bridge synthetic y(Landroidx/appcompat/view/menu/ay;)Landroidx/appcompat/view/menu/od1;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ay;->t:Landroidx/appcompat/view/menu/od1;

    return-object p0
.end method

.method public static bridge synthetic z()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/ay;->E:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final D(Landroidx/appcompat/view/menu/wx;ILandroidx/appcompat/view/menu/az0;Landroidx/appcompat/view/menu/bz0;Landroidx/appcompat/view/menu/bx0;)V
    .locals 1

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/az0;->d()I

    move-result v0

    invoke-virtual {p0, p4, v0, p1}, Landroidx/appcompat/view/menu/ay;->l(Landroidx/appcompat/view/menu/bz0;ILandroidx/appcompat/view/menu/wx;)V

    new-instance v0, Landroidx/appcompat/view/menu/cd1;

    invoke-direct {v0, p2, p3, p4, p5}, Landroidx/appcompat/view/menu/cd1;-><init>(ILandroidx/appcompat/view/menu/az0;Landroidx/appcompat/view/menu/bz0;Landroidx/appcompat/view/menu/bx0;)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/ay;->A:Landroid/os/Handler;

    new-instance p3, Landroidx/appcompat/view/menu/ic1;

    iget-object p4, p0, Landroidx/appcompat/view/menu/ay;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-direct {p3, v0, p4, p1}, Landroidx/appcompat/view/menu/ic1;-><init>(Landroidx/appcompat/view/menu/jd1;ILandroidx/appcompat/view/menu/wx;)V

    const/4 p1, 0x4

    invoke-virtual {p2, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final E(Landroidx/appcompat/view/menu/nd0;IJI)V
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->A:Landroid/os/Handler;

    new-instance v7, Landroidx/appcompat/view/menu/hc1;

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/view/menu/hc1;-><init>(Landroidx/appcompat/view/menu/nd0;IJI)V

    const/16 p1, 0x12

    invoke-virtual {v0, p1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final F(Landroidx/appcompat/view/menu/ef;I)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/ay;->g(Landroidx/appcompat/view/menu/ef;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->A:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->A:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b(Landroidx/appcompat/view/menu/wx;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->A:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final c(Landroidx/appcompat/view/menu/hb1;)V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/ay;->E:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ay;->x:Landroidx/appcompat/view/menu/hb1;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ay;->x:Landroidx/appcompat/view/menu/hb1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ay;->y:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ay;->y:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/hb1;->t()Landroidx/appcompat/view/menu/q4;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Landroidx/appcompat/view/menu/hb1;)V
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/ay;->E:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ay;->x:Landroidx/appcompat/view/menu/hb1;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ay;->x:Landroidx/appcompat/view/menu/hb1;

    iget-object p1, p0, Landroidx/appcompat/view/menu/ay;->y:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final f()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ay;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/up0;->b()Landroidx/appcompat/view/menu/up0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/up0;->a()Landroidx/appcompat/view/menu/vp0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/vp0;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->t:Landroidx/appcompat/view/menu/od1;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ay;->r:Landroid/content/Context;

    const v3, 0xc1fa340

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/od1;->a(Landroid/content/Context;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public final g(Landroidx/appcompat/view/menu/ef;I)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->s:Landroidx/appcompat/view/menu/xx;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ay;->r:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Landroidx/appcompat/view/menu/xx;->w(Landroid/content/Context;Landroidx/appcompat/view/menu/ef;I)Z

    move-result p1

    return p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/32 v1, 0x493e0

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return v5

    :pswitch_0
    iput-boolean v5, p0, Landroidx/appcompat/view/menu/ay;->o:Z

    goto/16 :goto_6

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/view/menu/hc1;

    iget-wide v0, p1, Landroidx/appcompat/view/menu/hc1;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/lz0;

    iget v1, p1, Landroidx/appcompat/view/menu/hc1;->b:I

    new-array v2, v6, [Landroidx/appcompat/view/menu/nd0;

    iget-object p1, p1, Landroidx/appcompat/view/menu/hc1;->a:Landroidx/appcompat/view/menu/nd0;

    aput-object p1, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/lz0;-><init>(ILjava/util/List;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ay;->j()Landroidx/appcompat/view/menu/nz0;

    move-result-object p1

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/nz0;->a(Landroidx/appcompat/view/menu/lz0;)Landroidx/appcompat/view/menu/zy0;

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->p:Landroidx/appcompat/view/menu/lz0;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lz0;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lz0;->d()I

    move-result v0

    iget v2, p1, Landroidx/appcompat/view/menu/hc1;->b:I

    if-ne v0, v2, :cond_2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p1, Landroidx/appcompat/view/menu/hc1;->d:I

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->p:Landroidx/appcompat/view/menu/lz0;

    iget-object v1, p1, Landroidx/appcompat/view/menu/hc1;->a:Landroidx/appcompat/view/menu/nd0;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/lz0;->i(Landroidx/appcompat/view/menu/nd0;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->A:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ay;->k()V

    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->p:Landroidx/appcompat/view/menu/lz0;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Landroidx/appcompat/view/menu/hc1;->a:Landroidx/appcompat/view/menu/nd0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroidx/appcompat/view/menu/lz0;

    iget v2, p1, Landroidx/appcompat/view/menu/hc1;->b:I

    invoke-direct {v1, v2, v0}, Landroidx/appcompat/view/menu/lz0;-><init>(ILjava/util/List;)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/ay;->p:Landroidx/appcompat/view/menu/lz0;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->A:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p1, Landroidx/appcompat/view/menu/hc1;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_6

    :pswitch_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ay;->k()V

    goto/16 :goto_6

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/view/menu/vb1;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    invoke-static {p1}, Landroidx/appcompat/view/menu/vb1;->b(Landroidx/appcompat/view/menu/vb1;)Landroidx/appcompat/view/menu/r2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    invoke-static {p1}, Landroidx/appcompat/view/menu/vb1;->b(Landroidx/appcompat/view/menu/vb1;)Landroidx/appcompat/view/menu/r2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/tb1;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/tb1;->B(Landroidx/appcompat/view/menu/tb1;Landroidx/appcompat/view/menu/vb1;)V

    goto/16 :goto_6

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/view/menu/vb1;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    invoke-static {p1}, Landroidx/appcompat/view/menu/vb1;->b(Landroidx/appcompat/view/menu/vb1;)Landroidx/appcompat/view/menu/r2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    invoke-static {p1}, Landroidx/appcompat/view/menu/vb1;->b(Landroidx/appcompat/view/menu/vb1;)Landroidx/appcompat/view/menu/r2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/tb1;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/tb1;->A(Landroidx/appcompat/view/menu/tb1;Landroidx/appcompat/view/menu/vb1;)V

    goto/16 :goto_6

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    throw v3

    :pswitch_6
    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/tb1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/tb1;->a()Z

    goto/16 :goto_6

    :pswitch_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/tb1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/tb1;->K()V

    goto/16 :goto_6

    :pswitch_8
    iget-object p1, p0, Landroidx/appcompat/view/menu/ay;->z:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/r2;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/tb1;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/tb1;->J()V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Landroidx/appcompat/view/menu/ay;->z:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_6

    :pswitch_9
    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/tb1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/tb1;->I()V

    goto/16 :goto_6

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/view/menu/wx;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ay;->i(Landroidx/appcompat/view/menu/wx;)Landroidx/appcompat/view/menu/tb1;

    goto/16 :goto_6

    :pswitch_b
    iget-object p1, p0, Landroidx/appcompat/view/menu/ay;->r:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroidx/appcompat/view/menu/ay;->r:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Landroidx/appcompat/view/menu/v7;->c(Landroid/app/Application;)V

    invoke-static {}, Landroidx/appcompat/view/menu/v7;->b()Landroidx/appcompat/view/menu/v7;

    move-result-object p1

    new-instance v0, Landroidx/appcompat/view/menu/ob1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ob1;-><init>(Landroidx/appcompat/view/menu/ay;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/v7;->a(Landroidx/appcompat/view/menu/v7$a;)V

    invoke-static {}, Landroidx/appcompat/view/menu/v7;->b()Landroidx/appcompat/view/menu/v7;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroidx/appcompat/view/menu/v7;->e(Z)Z

    move-result p1

    if-nez p1, :cond_d

    iput-wide v1, p0, Landroidx/appcompat/view/menu/ay;->n:J

    goto/16 :goto_6

    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/view/menu/ef;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/tb1;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/tb1;->r()I

    move-result v5

    if-ne v5, v0, :cond_6

    move-object v3, v2

    :cond_7
    if-eqz v3, :cond_9

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ef;->d()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ay;->s:Landroidx/appcompat/view/menu/xx;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ef;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/xx;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ef;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x45

    add-int/2addr v2, v5

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v4, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v3, v0}, Landroidx/appcompat/view/menu/tb1;->x(Landroidx/appcompat/view/menu/tb1;Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_6

    :cond_8
    invoke-static {v3}, Landroidx/appcompat/view/menu/tb1;->v(Landroidx/appcompat/view/menu/tb1;)Landroidx/appcompat/view/menu/r2;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/ay;->h(Landroidx/appcompat/view/menu/r2;Landroidx/appcompat/view/menu/ef;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-static {v3, p1}, Landroidx/appcompat/view/menu/tb1;->x(Landroidx/appcompat/view/menu/tb1;Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_6

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x4c

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not find API instance "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " while trying to fail enqueued calls."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    goto/16 :goto_6

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/view/menu/ic1;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    iget-object v1, p1, Landroidx/appcompat/view/menu/ic1;->c:Landroidx/appcompat/view/menu/wx;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/wx;->d()Landroidx/appcompat/view/menu/r2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/tb1;

    if-nez v0, :cond_a

    iget-object v0, p1, Landroidx/appcompat/view/menu/ic1;->c:Landroidx/appcompat/view/menu/wx;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ay;->i(Landroidx/appcompat/view/menu/wx;)Landroidx/appcompat/view/menu/tb1;

    move-result-object v0

    :cond_a
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/tb1;->L()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroidx/appcompat/view/menu/ay;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Landroidx/appcompat/view/menu/ic1;->b:I

    if-eq v1, v2, :cond_b

    iget-object p1, p1, Landroidx/appcompat/view/menu/ic1;->a:Landroidx/appcompat/view/menu/jd1;

    sget-object v1, Landroidx/appcompat/view/menu/ay;->C:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/jd1;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/tb1;->J()V

    goto :goto_6

    :cond_b
    iget-object p1, p1, Landroidx/appcompat/view/menu/ic1;->a:Landroidx/appcompat/view/menu/jd1;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/tb1;->E(Landroidx/appcompat/view/menu/jd1;)V

    goto :goto_6

    :pswitch_e
    iget-object p1, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/tb1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/tb1;->C()V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/tb1;->D()V

    goto :goto_3

    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    throw v3

    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v6, p1, :cond_c

    goto :goto_4

    :cond_c
    const-wide/16 v1, 0x2710

    :goto_4
    iput-wide v1, p0, Landroidx/appcompat/view/menu/ay;->n:J

    iget-object p1, p0, Landroidx/appcompat/view/menu/ay;->A:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/r2;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ay;->A:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v3, p0, Landroidx/appcompat/view/menu/ay;->n:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    :cond_d
    :goto_6
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Landroidx/appcompat/view/menu/wx;)Landroidx/appcompat/view/menu/tb1;
    .locals 2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/wx;->d()Landroidx/appcompat/view/menu/r2;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/tb1;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/view/menu/tb1;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/tb1;-><init>(Landroidx/appcompat/view/menu/ay;Landroidx/appcompat/view/menu/wx;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/tb1;->L()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/ay;->z:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/tb1;->D()V

    return-object v1
.end method

.method public final j()Landroidx/appcompat/view/menu/nz0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->q:Landroidx/appcompat/view/menu/nz0;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->r:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mz0;->a(Landroid/content/Context;)Landroidx/appcompat/view/menu/nz0;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ay;->q:Landroidx/appcompat/view/menu/nz0;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->q:Landroidx/appcompat/view/menu/nz0;

    return-object v0
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->p:Landroidx/appcompat/view/menu/lz0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lz0;->d()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ay;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ay;->j()Landroidx/appcompat/view/menu/nz0;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/appcompat/view/menu/nz0;->a(Landroidx/appcompat/view/menu/lz0;)Landroidx/appcompat/view/menu/zy0;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ay;->p:Landroidx/appcompat/view/menu/lz0;

    :cond_2
    return-void
.end method

.method public final l(Landroidx/appcompat/view/menu/bz0;ILandroidx/appcompat/view/menu/wx;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/wx;->d()Landroidx/appcompat/view/menu/r2;

    move-result-object p3

    invoke-static {p0, p2, p3}, Landroidx/appcompat/view/menu/gc1;->b(Landroidx/appcompat/view/menu/ay;ILandroidx/appcompat/view/menu/r2;)Landroidx/appcompat/view/menu/gc1;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/bz0;->a()Landroidx/appcompat/view/menu/zy0;

    move-result-object p1

    iget-object p3, p0, Landroidx/appcompat/view/menu/ay;->A:Landroid/os/Handler;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/appcompat/view/menu/nb1;

    invoke-direct {v0, p3}, Landroidx/appcompat/view/menu/nb1;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/view/menu/zy0;->c(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/gg0;)Landroidx/appcompat/view/menu/zy0;

    :cond_0
    return-void
.end method

.method public final m()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public final w(Landroidx/appcompat/view/menu/r2;)Landroidx/appcompat/view/menu/tb1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ay;->w:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/tb1;

    return-object p1
.end method
