.class public Landroidx/appcompat/view/menu/pt0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/ArrayMap;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/pt0;->a:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/pt0;->b:Ljava/util/Map;

    sget-object v1, Landroidx/appcompat/view/menu/bu0;->p:Ljava/util/Map;

    iput-object v1, p0, Landroidx/appcompat/view/menu/pt0;->c:Ljava/util/Map;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/appcompat/view/menu/pt0;->d:I

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/pt0;->c()V

    invoke-static {}, Landroidx/appcompat/view/menu/bu0;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/y6;)I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/pt0;->b:Ljava/util/Map;

    iget-object v1, p1, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object v1, v1, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/pt0;->d:I

    const/16 v1, 0x4e1f

    if-lt v0, v1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/pt0;->d:I

    iget-object v1, p0, Landroidx/appcompat/view/menu/pt0;->b:Ljava/util/Map;

    iget-object p1, p1, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object p1, p1, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Landroidx/appcompat/view/menu/pt0;->d:I

    add-int/lit16 p1, p1, 0x2710

    return p1
.end method

.method public b(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Landroidx/appcompat/view/menu/j50;)Landroidx/appcompat/view/menu/y6;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/y6;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/y6;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/u6;

    invoke-direct {v1, p2}, Landroidx/appcompat/view/menu/u6;-><init>(Landroid/content/pm/PackageParser$Package;)V

    iput-object v1, v0, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iput-object p3, v1, Landroidx/appcompat/view/menu/u6;->K:Landroidx/appcompat/view/menu/j50;

    iput-object p3, v0, Landroidx/appcompat/view/menu/y6;->o:Landroidx/appcompat/view/menu/j50;

    iput-object v0, v1, Landroidx/appcompat/view/menu/u6;->x:Landroidx/appcompat/view/menu/y6;

    const/4 p2, 0x0

    invoke-static {}, Landroidx/appcompat/view/menu/z6;->a()Landroidx/appcompat/view/menu/z6;

    move-result-object p3

    invoke-static {v1, p2, p3, p2}, Landroidx/appcompat/view/menu/zg0;->d(Landroidx/appcompat/view/menu/u6;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iput-object p2, v1, Landroidx/appcompat/view/menu/u6;->E:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p0, Landroidx/appcompat/view/menu/pt0;->a:Landroid/util/ArrayMap;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Landroidx/appcompat/view/menu/pt0;->a:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/y6;

    if-eqz p1, :cond_0

    iget p3, p1, Landroidx/appcompat/view/menu/y6;->n:I

    iput p3, v0, Landroidx/appcompat/view/menu/y6;->n:I

    iget-object p1, p1, Landroidx/appcompat/view/menu/y6;->p:Ljava/util/Map;

    iput-object p1, v0, Landroidx/appcompat/view/menu/y6;->p:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/pt0;->f(Landroidx/appcompat/view/menu/y6;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    monitor-exit p2

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p3, "registerAppIdLPw err."

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/lv0;->u()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/lr;->j(Ljava/io/File;)[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/menu/pt0;->d:I

    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/pt0;->b:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Landroidx/appcompat/view/menu/pt0;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    iget-object v3, p0, Landroidx/appcompat/view/menu/pt0;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 2

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/dh0;->b()Landroid/content/pm/PackageParser;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/appcompat/view/menu/dh0;->c(Landroid/content/pm/PackageParser;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroidx/appcompat/view/menu/dh0;->a(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Landroid/content/pm/PackageInfo;Landroidx/appcompat/view/menu/j50;)Landroidx/appcompat/view/menu/y6;
    .locals 3

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/pt0;->d(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->r()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/appcompat/view/menu/pt0;->b(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Landroidx/appcompat/view/menu/j50;)Landroidx/appcompat/view/menu/y6;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "parser apk error."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Landroidx/appcompat/view/menu/y6;)Z
    .locals 3

    iget-object v0, p1, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object v0, v0, Landroidx/appcompat/view/menu/u6;->A:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/pt0;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/bu0;

    if-nez v1, :cond_1

    new-instance v1, Landroidx/appcompat/view/menu/bu0;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/bu0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/pt0;->a(Landroidx/appcompat/view/menu/y6;)I

    move-result v2

    iput v2, v1, Landroidx/appcompat/view/menu/bu0;->n:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/pt0;->c:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget v0, v1, Landroidx/appcompat/view/menu/bu0;->n:I

    iput v0, p1, Landroidx/appcompat/view/menu/y6;->n:I

    :cond_2
    iget v0, p1, Landroidx/appcompat/view/menu/y6;->n:I

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/pt0;->a(Landroidx/appcompat/view/menu/y6;)I

    move-result v0

    iput v0, p1, Landroidx/appcompat/view/menu/y6;->n:I

    :cond_3
    iget p1, p1, Landroidx/appcompat/view/menu/y6;->n:I

    if-ltz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/pt0;->h()V

    invoke-static {}, Landroidx/appcompat/view/menu/bu0;->b()V

    return p1
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pt0;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final h()V
    .locals 7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    new-instance v1, Landroid/util/AtomicFile;

    invoke-static {}, Landroidx/appcompat/view/menu/lv0;->u()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/pt0;->a:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Landroidx/appcompat/view/menu/pt0;->b:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Landroidx/appcompat/view/menu/pt0;->b:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_1
    iget v3, p0, Landroidx/appcompat/view/menu/pt0;->d:I

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroidx/appcompat/view/menu/pt0;->b:Ljava/util/Map;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/lr;->l(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public i()V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/view/menu/pt0;->a:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/lv0;->d()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/lr;->g(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/pt0;->j(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pt0;->a:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Landroidx/appcompat/view/menu/lv0;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/pt0;->k(Ljava/io/File;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final k(Ljava/io/File;)V
    .locals 7

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {v0}, Landroidx/appcompat/view/menu/lv0;->p(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_0
    invoke-static {v2}, Landroidx/appcompat/view/menu/lr;->j(Ljava/io/File;)[B

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v2, Landroidx/appcompat/view/menu/y6;

    invoke-direct {v2, v1}, Landroidx/appcompat/view/menu/y6;-><init>(Landroid/os/Parcel;)V

    iget-object v4, v2, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iput-object v2, v4, Landroidx/appcompat/view/menu/u6;->x:Landroidx/appcompat/view/menu/y6;

    iget-object v4, v2, Landroidx/appcompat/view/menu/y6;->o:Landroidx/appcompat/view/menu/j50;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/j50;->b(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->r()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v6, v2, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object v6, v6, Landroidx/appcompat/view/menu/u6;->G:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v5

    iget-object v6, v2, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object v6, v6, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/a7;->n(Ljava/lang/String;)V

    iget-object v5, v2, Landroidx/appcompat/view/menu/y6;->o:Landroidx/appcompat/view/menu/j50;

    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/view/menu/pt0;->e(Landroid/content/pm/PackageInfo;Landroidx/appcompat/view/menu/j50;)Landroidx/appcompat/view/menu/y6;

    move-result-object v4

    iget-object v4, v4, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iput-object v4, v2, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    iget-object v4, v2, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    invoke-static {}, Landroidx/appcompat/view/menu/z6;->a()Landroidx/appcompat/view/menu/z6;

    move-result-object v6

    invoke-static {v4, v5, v6, v5}, Landroidx/appcompat/view/menu/zg0;->d(Landroidx/appcompat/view/menu/u6;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iput-object v5, v4, Landroidx/appcompat/view/menu/u6;->E:Landroid/content/pm/ApplicationInfo;

    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/y6;->i()V

    iget-object v4, p0, Landroidx/appcompat/view/menu/pt0;->a:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object v5, v5, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/lr;->d(Ljava/io/File;)I

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/pt0;->g(Ljava/lang/String;)V

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/a7;->n(Ljava/lang/String;)V

    invoke-static {}, Landroidx/appcompat/view/menu/x6;->w2()Landroidx/appcompat/view/menu/x6;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v3, v2}, Landroidx/appcompat/view/menu/x6;->E2(Ljava/lang/String;ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :goto_3
    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
