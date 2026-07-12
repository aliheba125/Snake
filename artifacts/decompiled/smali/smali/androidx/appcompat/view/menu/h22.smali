.class public final Landroidx/appcompat/view/menu/h22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic n:Landroidx/appcompat/view/menu/d02;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/d02;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/h22;->n:Landroidx/appcompat/view/menu/d02;

    iput-object p2, p0, Landroidx/appcompat/view/menu/h22;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/h22;->m:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/h22;->m:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Landroidx/appcompat/view/menu/h22;->n:Landroidx/appcompat/view/menu/d02;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/h22;->n:Landroidx/appcompat/view/menu/d02;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/hr1;->p()Landroidx/appcompat/view/menu/zs1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/zs1;->F()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroidx/appcompat/view/menu/si1;->O:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/view/menu/qf1;->x(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/h22;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/h22;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
