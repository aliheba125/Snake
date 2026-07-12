.class public abstract Landroidx/appcompat/view/menu/kk1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Z

.field public final synthetic c:Landroidx/appcompat/view/menu/z7;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/z7;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/kk1;->c:Landroidx/appcompat/view/menu/z7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/kk1;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/kk1;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
.end method

.method public abstract b()V
.end method

.method public final c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/kk1;->a:Ljava/lang/Object;

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/kk1;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback proxy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " being reused. This is not safe."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/kk1;->a(Ljava/lang/Object;)V

    :cond_1
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/kk1;->b:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kk1;->e()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroidx/appcompat/view/menu/kk1;->a:Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/kk1;->d()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/kk1;->c:Landroidx/appcompat/view/menu/z7;

    invoke-static {v0}, Landroidx/appcompat/view/menu/z7;->Y(Landroidx/appcompat/view/menu/z7;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/kk1;->c:Landroidx/appcompat/view/menu/z7;

    invoke-static {v1}, Landroidx/appcompat/view/menu/z7;->Y(Landroidx/appcompat/view/menu/z7;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
