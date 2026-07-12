.class public Landroidx/appcompat/view/menu/x3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Landroidx/appcompat/view/menu/x3;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/x3;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/x3;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/x3;->c:Landroidx/appcompat/view/menu/x3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/x3;->a:Ljava/util/Map;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yu0;->n()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/x3;->b:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/ct0;)V
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/x3;->e(Landroidx/appcompat/view/menu/ct0;)V

    return-void
.end method

.method public static c()Landroidx/appcompat/view/menu/x3;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/x3;->c:Landroidx/appcompat/view/menu/x3;

    return-object v0
.end method

.method public static synthetic e(Landroidx/appcompat/view/menu/ct0;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ct0;->f()Landroid/app/Service;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Intent;)Landroidx/appcompat/view/menu/ct0;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/x3;->a:Ljava/util/Map;

    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/ct0;

    return-object p1
.end method

.method public final d(Landroidx/appcompat/view/menu/rl0;)Landroid/app/Service;
    .locals 4

    iget-object v0, p1, Landroidx/appcompat/view/menu/rl0;->a:Landroid/content/Intent;

    iget-object v1, p1, Landroidx/appcompat/view/menu/rl0;->b:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroidx/appcompat/view/menu/rl0;->c:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/x3;->b(Landroid/content/Intent;)Landroidx/appcompat/view/menu/ct0;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ct0;->f()Landroid/app/Service;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ct0;->f()Landroid/app/Service;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->B2()Landroidx/appcompat/view/menu/jv0;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroidx/appcompat/view/menu/jv0;->A2(Landroid/content/pm/ServiceInfo;Landroid/os/IBinder;)Landroid/app/Service;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v1, Landroidx/appcompat/view/menu/ct0;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/ct0;-><init>()V

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/ct0;->l(Landroid/app/Service;)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/x3;->a:Ljava/util/Map;

    new-instance v3, Landroid/content/Intent$FilterComparison;

    invoke-direct {v3, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public f(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    invoke-static {p1}, Landroidx/appcompat/view/menu/rl0;->a(Landroid/content/Intent;)Landroidx/appcompat/view/menu/rl0;

    move-result-object p1

    iget-object v0, p1, Landroidx/appcompat/view/menu/rl0;->a:Landroid/content/Intent;

    iget-object v1, p1, Landroidx/appcompat/view/menu/rl0;->b:Landroid/content/pm/ServiceInfo;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/x3;->d(Landroidx/appcompat/view/menu/rl0;)Landroid/app/Service;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/x3;->b(Landroid/content/Intent;)Landroidx/appcompat/view/menu/ct0;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/ct0;->i(Landroid/content/Intent;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/ct0;->h(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ct0;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/ct0;->k(Z)V

    :cond_2
    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/ct0;->d(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_3
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/view/menu/ct0;->b(Landroid/content/Intent;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_0
    return-object v2
.end method

.method public g(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/x3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/x3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/ct0;

    :try_start_0
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ct0;->f()Landroid/app/Service;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/x3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/x3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/ct0;

    :try_start_0
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ct0;->f()Landroid/app/Service;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Service;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/x3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/x3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/x3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/ct0;

    :try_start_0
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ct0;->f()Landroid/app/Service;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Service;->onLowMemory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(Landroid/content/Intent;)V
    .locals 2

    invoke-static {p1}, Landroidx/appcompat/view/menu/rl0;->a(Landroid/content/Intent;)Landroidx/appcompat/view/menu/rl0;

    move-result-object p1

    iget-object v0, p1, Landroidx/appcompat/view/menu/rl0;->a:Landroid/content/Intent;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/appcompat/view/menu/rl0;->b:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/x3;->d(Landroidx/appcompat/view/menu/rl0;)Landroid/app/Service;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p1, Landroidx/appcompat/view/menu/rl0;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p1, Landroidx/appcompat/view/menu/rl0;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/x3;->b(Landroid/content/Intent;)Landroidx/appcompat/view/menu/ct0;

    move-result-object v0

    iget p1, p1, Landroidx/appcompat/view/menu/rl0;->e:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/ct0;->m(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public k(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/x3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/x3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/ct0;

    :try_start_0
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ct0;->f()Landroid/app/Service;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Service;->onTrimMemory(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l(Landroid/content/Intent;)V
    .locals 6

    invoke-static {p1}, Landroidx/appcompat/view/menu/rl0;->a(Landroid/content/Intent;)Landroidx/appcompat/view/menu/rl0;

    move-result-object v0

    iget-object v1, v0, Landroidx/appcompat/view/menu/rl0;->a:Landroid/content/Intent;

    if-eqz v1, :cond_6

    iget-object v2, v0, Landroidx/appcompat/view/menu/rl0;->b:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->j()Landroidx/appcompat/view/menu/dv0;

    move-result-object v2

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroidx/appcompat/view/menu/dv0;->w(Landroid/content/Intent;I)Landroidx/appcompat/view/menu/i31;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/x3;->d(Landroidx/appcompat/view/menu/rl0;)Landroid/app/Service;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget-object v0, v0, Landroidx/appcompat/view/menu/rl0;->a:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/x3;->b(Landroid/content/Intent;)Landroidx/appcompat/view/menu/ct0;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/i31;->a()I

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ct0;->c(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v3}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->j()Landroidx/appcompat/view/menu/dv0;

    move-result-object v2

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroidx/appcompat/view/menu/dv0;->v(Landroid/content/Intent;I)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/x3;->a:Ljava/util/Map;

    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, v1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0, v4}, Landroidx/appcompat/view/menu/ct0;->k(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_3
    return-void
.end method

.method public m(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/x3;->b(Landroid/content/Intent;)Landroidx/appcompat/view/menu/ct0;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/ct0;->d(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public n(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/x3;->b(Landroid/content/Intent;)Landroidx/appcompat/view/menu/ct0;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ct0;->f()Landroid/app/Service;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ct0;->g()I

    move-result v1

    if-lez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/x3;->b:Landroid/os/Handler;

    new-instance v2, Landroidx/appcompat/view/menu/w3;

    invoke-direct {v2, v0}, Landroidx/appcompat/view/menu/w3;-><init>(Landroidx/appcompat/view/menu/ct0;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->j()Landroidx/appcompat/view/menu/dv0;

    move-result-object v0

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/dv0;->v(Landroid/content/Intent;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/x3;->a:Ljava/util/Map;

    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
