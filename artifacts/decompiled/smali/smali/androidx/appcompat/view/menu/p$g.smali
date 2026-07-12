.class public final Landroidx/appcompat/view/menu/p$g;
.super Landroidx/appcompat/view/menu/p$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/p$b;-><init>(Landroidx/appcompat/view/menu/p$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/p;Landroidx/appcompat/view/menu/p$e;Landroidx/appcompat/view/menu/p$e;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Landroidx/appcompat/view/menu/p;->n:Landroidx/appcompat/view/menu/p$e;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Landroidx/appcompat/view/menu/p;->n:Landroidx/appcompat/view/menu/p$e;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public b(Landroidx/appcompat/view/menu/p;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Landroidx/appcompat/view/menu/p;->m:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Landroidx/appcompat/view/menu/p;->m:Ljava/lang/Object;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public c(Landroidx/appcompat/view/menu/p;Landroidx/appcompat/view/menu/p$h;Landroidx/appcompat/view/menu/p$h;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Landroidx/appcompat/view/menu/p;->o:Landroidx/appcompat/view/menu/p$h;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Landroidx/appcompat/view/menu/p;->o:Landroidx/appcompat/view/menu/p$h;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public d(Landroidx/appcompat/view/menu/p$h;Landroidx/appcompat/view/menu/p$h;)V
    .locals 0

    iput-object p2, p1, Landroidx/appcompat/view/menu/p$h;->b:Landroidx/appcompat/view/menu/p$h;

    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/p$h;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Landroidx/appcompat/view/menu/p$h;->a:Ljava/lang/Thread;

    return-void
.end method
