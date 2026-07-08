.class public final Landroidx/appcompat/view/menu/e52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/rd2;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/lang/Object;

.field public c:Landroidx/appcompat/view/menu/ig0;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroidx/appcompat/view/menu/ig0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/e52;->b:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/appcompat/view/menu/e52;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/appcompat/view/menu/e52;->c:Landroidx/appcompat/view/menu/ig0;

    return-void
.end method

.method public static bridge synthetic a(Landroidx/appcompat/view/menu/e52;)Landroidx/appcompat/view/menu/ig0;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/e52;->c:Landroidx/appcompat/view/menu/ig0;

    return-object p0
.end method

.method public static bridge synthetic c(Landroidx/appcompat/view/menu/e52;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/e52;->b:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final b(Landroidx/appcompat/view/menu/zy0;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/zy0;->m()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/zy0;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/e52;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/e52;->c:Landroidx/appcompat/view/menu/ig0;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/e52;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/appcompat/view/menu/b32;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/b32;-><init>(Landroidx/appcompat/view/menu/e52;Landroidx/appcompat/view/menu/zy0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return-void
.end method
