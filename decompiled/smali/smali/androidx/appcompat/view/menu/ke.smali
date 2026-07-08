.class public Landroidx/appcompat/view/menu/ke;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/ke$a;,
        Landroidx/appcompat/view/menu/ke$b;,
        Landroidx/appcompat/view/menu/ke$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroidx/appcompat/view/menu/ke$a;

.field public final c:Landroidx/appcompat/view/menu/ke$b;

.field public final d:Landroidx/appcompat/view/menu/ke$a;

.field public final e:Landroidx/appcompat/view/menu/ke$c;

.field public final f:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ke;->a:Ljava/lang/Object;

    new-instance v0, Landroidx/appcompat/view/menu/ke$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/ke$a;-><init>(Landroidx/appcompat/view/menu/je;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ke;->b:Landroidx/appcompat/view/menu/ke$a;

    new-instance v0, Landroidx/appcompat/view/menu/ke$b;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/ke$b;-><init>(Landroidx/appcompat/view/menu/le;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ke;->c:Landroidx/appcompat/view/menu/ke$b;

    new-instance v0, Landroidx/appcompat/view/menu/ke$a;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/ke$a;-><init>(Landroidx/appcompat/view/menu/je;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ke;->d:Landroidx/appcompat/view/menu/ke$a;

    new-instance v0, Landroidx/appcompat/view/menu/ke$c;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/ke$c;-><init>(Landroidx/appcompat/view/menu/me;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ke;->e:Landroidx/appcompat/view/menu/ke$c;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/ke;->f:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/u6;Ljava/util/List;)V
    .locals 6

    iget-object v0, p1, Landroidx/appcompat/view/menu/u6;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p1, Landroidx/appcompat/view/menu/u6;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/u6$b;

    iget-object v3, v2, Landroidx/appcompat/view/menu/u6$b;->f:Landroid/content/pm/ActivityInfo;

    iget-object v4, p1, Landroidx/appcompat/view/menu/u6;->E:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroidx/appcompat/view/menu/x6;->v2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v3, p0, Landroidx/appcompat/view/menu/ke;->b:Landroidx/appcompat/view/menu/ke$a;

    const-string v4, "activity"

    invoke-static {v3, v2, v4, p2}, Landroidx/appcompat/view/menu/ke$a;->s(Landroidx/appcompat/view/menu/ke$a;Landroidx/appcompat/view/menu/u6$b;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/u6;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/ke;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/ke;->a(Landroidx/appcompat/view/menu/u6;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ke;->e(Landroidx/appcompat/view/menu/u6;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ke;->c(Landroidx/appcompat/view/menu/u6;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ke;->d(Landroidx/appcompat/view/menu/u6;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Landroidx/appcompat/view/menu/u6;)V
    .locals 13

    iget-object v0, p1, Landroidx/appcompat/view/menu/u6;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p1, Landroidx/appcompat/view/menu/u6;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/u6$i;

    iget-object v4, v3, Landroidx/appcompat/view/menu/u6$i;->f:Landroid/content/pm/ProviderInfo;

    iget-object v5, p1, Landroidx/appcompat/view/menu/u6;->E:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroidx/appcompat/view/menu/x6;->v2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v4, p0, Landroidx/appcompat/view/menu/ke;->c:Landroidx/appcompat/view/menu/ke$b;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/ke$b;->s(Landroidx/appcompat/view/menu/u6$i;)V

    iget-object v4, v3, Landroidx/appcompat/view/menu/u6$i;->f:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v6, v3, Landroidx/appcompat/view/menu/u6$i;->f:Landroid/content/pm/ProviderInfo;

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    array-length v6, v4

    move v8, v1

    :goto_1
    if-ge v8, v6, :cond_4

    aget-object v9, v4, v8

    iget-object v10, p0, Landroidx/appcompat/view/menu/ke;->f:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Landroidx/appcompat/view/menu/ke;->f:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v3, Landroidx/appcompat/view/menu/u6$i;->f:Landroid/content/pm/ProviderInfo;

    iget-object v11, v10, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v11, :cond_0

    iput-object v9, v10, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_3

    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v3, Landroidx/appcompat/view/menu/u6$i;->f:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_3

    :cond_1
    iget-object v10, p0, Landroidx/appcompat/view/menu/ke;->f:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/u6$i;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/u6$d;->a()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/u6$d;->a()Landroid/content/ComponentName;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object v9, v7

    :goto_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final d(Landroidx/appcompat/view/menu/u6;)V
    .locals 6

    iget-object v0, p1, Landroidx/appcompat/view/menu/u6;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p1, Landroidx/appcompat/view/menu/u6;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/u6$b;

    iget-object v3, v2, Landroidx/appcompat/view/menu/u6$b;->f:Landroid/content/pm/ActivityInfo;

    iget-object v4, p1, Landroidx/appcompat/view/menu/u6;->E:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroidx/appcompat/view/menu/x6;->v2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v3, p0, Landroidx/appcompat/view/menu/ke;->d:Landroidx/appcompat/view/menu/ke$a;

    const-string v4, "receiver"

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5}, Landroidx/appcompat/view/menu/ke$a;->s(Landroidx/appcompat/view/menu/ke$a;Landroidx/appcompat/view/menu/u6$b;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Landroidx/appcompat/view/menu/u6;)V
    .locals 6

    iget-object v0, p1, Landroidx/appcompat/view/menu/u6;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p1, Landroidx/appcompat/view/menu/u6;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/u6$k;

    iget-object v3, v2, Landroidx/appcompat/view/menu/u6$k;->f:Landroid/content/pm/ServiceInfo;

    iget-object v4, p1, Landroidx/appcompat/view/menu/u6;->E:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v4, v5}, Landroidx/appcompat/view/menu/x6;->v2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v3, p0, Landroidx/appcompat/view/menu/ke;->e:Landroidx/appcompat/view/menu/ke$c;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/ke$c;->s(Landroidx/appcompat/view/menu/u6$k;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Landroid/content/ComponentName;)Landroidx/appcompat/view/menu/u6$b;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ke;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ke;->b:Landroidx/appcompat/view/menu/ke$a;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ke$a;->r(Landroidx/appcompat/view/menu/ke$a;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/u6$b;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g(Landroid/content/ComponentName;)Landroidx/appcompat/view/menu/u6$i;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ke;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ke;->c:Landroidx/appcompat/view/menu/ke$b;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ke$b;->r(Landroidx/appcompat/view/menu/ke$b;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/u6$i;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(Landroid/content/ComponentName;)Landroidx/appcompat/view/menu/u6$b;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ke;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ke;->d:Landroidx/appcompat/view/menu/ke$a;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ke$a;->r(Landroidx/appcompat/view/menu/ke$a;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/u6$b;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i(Landroid/content/ComponentName;)Landroidx/appcompat/view/menu/u6$k;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ke;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ke;->e:Landroidx/appcompat/view/menu/ke$c;

    invoke-static {v1}, Landroidx/appcompat/view/menu/ke$c;->r(Landroidx/appcompat/view/menu/ke$c;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/u6$k;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public j(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ke;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ke;->b:Landroidx/appcompat/view/menu/ke$a;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/ke$a;->y(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/ke;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ke;->b:Landroidx/appcompat/view/menu/ke$a;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/view/menu/ke$a;->z(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ke;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ke;->f:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/u6$i;

    if-nez p1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object v1, v1, Landroidx/appcompat/view/menu/u6;->x:Landroidx/appcompat/view/menu/y6;

    invoke-virtual {v1, p3}, Landroidx/appcompat/view/menu/y6;->e(I)Landroidx/appcompat/view/menu/z6;

    move-result-object v1

    invoke-static {p1, p2, v1, p3}, Landroidx/appcompat/view/menu/zg0;->i(Landroidx/appcompat/view/menu/u6$i;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m(Ljava/lang/String;II)Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/ke;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/ke;->c:Landroidx/appcompat/view/menu/ke$b;

    invoke-static {v2}, Landroidx/appcompat/view/menu/ke$b;->r(Landroidx/appcompat/view/menu/ke$b;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_4

    iget-object v3, p0, Landroidx/appcompat/view/menu/ke;->c:Landroidx/appcompat/view/menu/ke$b;

    invoke-static {v3}, Landroidx/appcompat/view/menu/ke$b;->r(Landroidx/appcompat/view/menu/ke$b;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/u6$i;

    iget-object v4, v3, Landroidx/appcompat/view/menu/u6$d;->a:Landroidx/appcompat/view/menu/u6;

    iget-object v4, v4, Landroidx/appcompat/view/menu/u6;->x:Landroidx/appcompat/view/menu/y6;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v3, Landroidx/appcompat/view/menu/u6$i;->f:Landroid/content/pm/ProviderInfo;

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-virtual {v4, p3}, Landroidx/appcompat/view/menu/y6;->e(I)Landroidx/appcompat/view/menu/z6;

    move-result-object v4

    invoke-static {v3, p2, v4, p3}, Landroidx/appcompat/view/menu/zg0;->i(Landroidx/appcompat/view/menu/u6$i;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public n(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ke;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ke;->d:Landroidx/appcompat/view/menu/ke$a;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/ke$a;->y(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public o(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/ke;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ke;->d:Landroidx/appcompat/view/menu/ke$a;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/view/menu/ke$a;->z(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public p(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ke;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ke;->e:Landroidx/appcompat/view/menu/ke$c;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/ke$c;->w(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/ke;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/ke;->e:Landroidx/appcompat/view/menu/ke$c;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/view/menu/ke$c;->x(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public r(Landroidx/appcompat/view/menu/u6;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ke;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ke;->s(Landroidx/appcompat/view/menu/u6;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final s(Landroidx/appcompat/view/menu/u6;)V
    .locals 9

    iget-object v0, p1, Landroidx/appcompat/view/menu/u6;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p1, Landroidx/appcompat/view/menu/u6;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/u6$b;

    iget-object v4, p0, Landroidx/appcompat/view/menu/ke;->b:Landroidx/appcompat/view/menu/ke$a;

    invoke-static {v4, v3}, Landroidx/appcompat/view/menu/ke$a;->t(Landroidx/appcompat/view/menu/ke$a;Landroidx/appcompat/view/menu/u6$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/appcompat/view/menu/u6;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v3, p1, Landroidx/appcompat/view/menu/u6;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/u6$i;

    iget-object v4, p0, Landroidx/appcompat/view/menu/ke;->c:Landroidx/appcompat/view/menu/ke$b;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/ke$b;->x(Landroidx/appcompat/view/menu/u6$i;)V

    iget-object v4, v3, Landroidx/appcompat/view/menu/u6$i;->f:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    iget-object v8, p0, Landroidx/appcompat/view/menu/ke;->f:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_2

    iget-object v8, p0, Landroidx/appcompat/view/menu/ke;->f:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Landroidx/appcompat/view/menu/ke;->f:Landroid/util/ArrayMap;

    iget-object v3, v3, Landroidx/appcompat/view/menu/u6$i;->f:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p1, Landroidx/appcompat/view/menu/u6;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_5

    iget-object v3, p1, Landroidx/appcompat/view/menu/u6;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/u6$b;

    iget-object v4, p0, Landroidx/appcompat/view/menu/ke;->d:Landroidx/appcompat/view/menu/ke$a;

    invoke-static {v4, v3}, Landroidx/appcompat/view/menu/ke$a;->t(Landroidx/appcompat/view/menu/ke$a;Landroidx/appcompat/view/menu/u6$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p1, Landroidx/appcompat/view/menu/u6;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_5
    if-ge v1, v0, :cond_6

    iget-object v2, p1, Landroidx/appcompat/view/menu/u6;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/u6$k;

    iget-object v3, p0, Landroidx/appcompat/view/menu/ke;->e:Landroidx/appcompat/view/menu/ke$c;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/ke$c;->y(Landroidx/appcompat/view/menu/u6$k;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method
