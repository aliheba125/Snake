.class public Landroidx/appcompat/view/menu/s3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroidx/appcompat/view/menu/s3;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/s3;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/s3;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/s3;->b:Landroidx/appcompat/view/menu/s3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/s3;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Landroidx/appcompat/view/menu/s3;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/s3;->b:Landroidx/appcompat/view/menu/s3;

    return-object v0
.end method


# virtual methods
.method public b(I)Landroid/app/job/JobService;
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/s3;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/s3;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/a70;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/appcompat/view/menu/a70;->o:Landroid/app/job/JobService;

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->k()Landroidx/appcompat/view/menu/mv0;

    move-result-object v2

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->G2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroidx/appcompat/view/menu/mv0;->i(Ljava/lang/String;I)Landroidx/appcompat/view/menu/a70;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :cond_1
    :try_start_3
    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->B2()Landroidx/appcompat/view/menu/jv0;

    move-result-object v3

    iget-object v4, v2, Landroidx/appcompat/view/menu/a70;->n:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/jv0;->y2(Landroid/content/pm/ServiceInfo;)Landroid/app/job/JobService;

    move-result-object v3

    iput-object v3, v2, Landroidx/appcompat/view/menu/a70;->o:Landroid/app/job/JobService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v3, :cond_2

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v1

    :cond_2
    :try_start_5
    iget-object v3, p0, Landroidx/appcompat/view/menu/s3;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v2, Landroidx/appcompat/view/menu/a70;->o:Landroid/app/job/JobService;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public c(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/s3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/a70;

    iget-object v1, v1, Landroidx/appcompat/view/menu/a70;->o:Landroid/app/job/JobService;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/s3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/a70;

    iget-object v1, v1, Landroidx/appcompat/view/menu/a70;->o:Landroid/app/job/JobService;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Service;->onDestroy()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/s3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/a70;

    iget-object v1, v1, Landroidx/appcompat/view/menu/a70;->o:Landroid/app/job/JobService;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Service;->onLowMemory()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Landroid/app/job/JobParameters;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/s3;->b(I)Landroid/app/job/JobService;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1, p1}, Landroid/app/job/JobService;->onStartJob(Landroid/app/job/JobParameters;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public g(Landroid/app/job/JobParameters;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/s3;->b(I)Landroid/app/job/JobService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/job/JobService;->onStopJob(Landroid/app/job/JobParameters;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/s3;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/s3;->a:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/s3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/a70;

    iget-object v1, v1, Landroidx/appcompat/view/menu/a70;->o:Landroid/app/job/JobService;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/app/Service;->onTrimMemory(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
