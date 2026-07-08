.class public Landroidx/appcompat/view/menu/dd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/r7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/dd0$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/dd0$a;

.field public final b:Landroidx/appcompat/view/menu/ei;

.field public final c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/ei;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/view/menu/dd0$a;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/dd0$a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Landroidx/appcompat/view/menu/dd0;-><init>(Landroidx/appcompat/view/menu/dd0$a;Landroidx/appcompat/view/menu/ei;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/dd0$a;Landroidx/appcompat/view/menu/ei;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/dd0;->c:Ljava/util/Map;

    iput-object p1, p0, Landroidx/appcompat/view/menu/dd0;->a:Landroidx/appcompat/view/menu/dd0$a;

    iput-object p2, p0, Landroidx/appcompat/view/menu/dd0;->b:Landroidx/appcompat/view/menu/ei;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Landroidx/appcompat/view/menu/c21;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/dd0;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/dd0;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/c21;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/dd0;->a:Landroidx/appcompat/view/menu/dd0$a;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/dd0$a;->b(Ljava/lang/String;)Landroidx/appcompat/view/menu/q7;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_1
    :try_start_2
    iget-object v1, p0, Landroidx/appcompat/view/menu/dd0;->b:Landroidx/appcompat/view/menu/ei;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/ei;->a(Ljava/lang/String;)Landroidx/appcompat/view/menu/di;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/q7;->create(Landroidx/appcompat/view/menu/di;)Landroidx/appcompat/view/menu/c21;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/dd0;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw p1
.end method
