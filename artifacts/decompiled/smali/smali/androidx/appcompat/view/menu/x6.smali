.class public Landroidx/appcompat/view/menu/x6;
.super Landroidx/appcompat/view/menu/m00$a;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i30;


# static fields
.field public static final q:Landroidx/appcompat/view/menu/x6;

.field public static final r:Landroidx/appcompat/view/menu/f7;


# instance fields
.field public final l:Landroidx/appcompat/view/menu/pt0;

.field public final m:Landroidx/appcompat/view/menu/ke;

.field public final n:Ljava/util/List;

.field public final o:Ljava/util/Map;

.field public final p:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/x6;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/x6;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/x6;->q:Landroidx/appcompat/view/menu/x6;

    invoke-static {}, Landroidx/appcompat/view/menu/f7;->k()Landroidx/appcompat/view/menu/f7;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/view/menu/m00$a;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/pt0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/pt0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/x6;->l:Landroidx/appcompat/view/menu/pt0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/x6;->n:Ljava/util/List;

    iget-object v0, v0, Landroidx/appcompat/view/menu/pt0;->a:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/x6;->p:Ljava/lang/Object;

    new-instance v0, Landroidx/appcompat/view/menu/ke;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/ke;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Landroidx/appcompat/view/menu/x6$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/x6$a;-><init>(Landroidx/appcompat/view/menu/x6;)V

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static bridge synthetic h(Landroidx/appcompat/view/menu/x6;)Landroidx/appcompat/view/menu/pt0;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/x6;->l:Landroidx/appcompat/view/menu/pt0;

    return-object p0
.end method

.method public static v2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static w2()Landroidx/appcompat/view/menu/x6;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/x6;->q:Landroidx/appcompat/view/menu/x6;

    return-object v0
.end method


# virtual methods
.method public A2()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public B1(I)Ljava/util/List;
    .locals 5

    sget-object v0, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/y6;

    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/y6;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object v4, v4, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-static {v4}, Landroidx/appcompat/view/menu/sx;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Landroidx/appcompat/view/menu/n50;

    invoke-direct {v4}, Landroidx/appcompat/view/menu/n50;-><init>()V

    iput p1, v4, Landroidx/appcompat/view/menu/n50;->m:I

    iget-object v3, v3, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object v3, v3, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    iput-object v3, v4, Landroidx/appcompat/view/menu/n50;->n:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final B2(II)Ljava/util/List;
    .locals 5

    sget-object v0, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/y6;

    iget-object v4, v3, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    invoke-virtual {v3, p2}, Landroidx/appcompat/view/menu/y6;->e(I)Landroidx/appcompat/view/menu/z6;

    move-result-object v3

    invoke-static {v4, p1, v3, p2}, Landroidx/appcompat/view/menu/zg0;->d(Landroidx/appcompat/view/menu/u6;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final C2(Ljava/lang/String;Landroidx/appcompat/view/menu/j50;I)Landroidx/appcompat/view/menu/k50;
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v0, Landroidx/appcompat/view/menu/k50;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/k50;-><init>()V

    const/16 v1, 0x8

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    invoke-virtual {v3, p3}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, p3}, Landroidx/appcompat/view/menu/f7;->c2(I)Landroidx/appcompat/view/menu/e7;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/j50;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroidx/appcompat/view/menu/lv0;->f()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, v3}, Landroidx/appcompat/view/menu/lr;->c(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v2, v3

    goto/16 :goto_4

    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->r()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "getPackageArchiveInfo error. Please check whether APK is normal."

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/k50;->a(Ljava/lang/String;)Landroidx/appcompat/view/menu/k50;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/j50;->b(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {v2}, Landroidx/appcompat/view/menu/lr;->d(Ljava/io/File;)I

    :cond_2
    return-object p1

    :cond_3
    :try_start_3
    invoke-static {v2}, Landroidx/appcompat/view/menu/a;->d(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->r()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->y()Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "The box does not support 32-bit Application"

    goto :goto_3

    :cond_4
    const-string p3, "The box does not support 64-bit Application"

    :goto_3
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Landroidx/appcompat/view/menu/k50;->b(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/k50;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/j50;->b(I)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {v2}, Landroidx/appcompat/view/menu/lr;->d(Ljava/io/File;)I

    :cond_5
    return-object p1

    :cond_6
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/x6;->F2(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, "Parser apk error."

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/k50;->a(Ljava/lang/String;)Landroidx/appcompat/view/menu/k50;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/j50;->b(I)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {v2}, Landroidx/appcompat/view/menu/lr;->d(Ljava/io/File;)I

    :cond_7
    return-object p1

    :cond_8
    :try_start_5
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v3, v0, Landroidx/appcompat/view/menu/k50;->n:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroidx/appcompat/view/menu/j50;->b(I)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->r()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :cond_9
    iget-object v4, p0, Landroidx/appcompat/view/menu/x6;->l:Landroidx/appcompat/view/menu/pt0;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, p1, p2}, Landroidx/appcompat/view/menu/pt0;->b(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Landroidx/appcompat/view/menu/j50;)Landroidx/appcompat/view/menu/y6;

    move-result-object v4

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, p3}, Landroidx/appcompat/view/menu/a7;->o(Ljava/lang/String;I)V

    invoke-static {}, Landroidx/appcompat/view/menu/w6;->h()Landroidx/appcompat/view/menu/w6;

    move-result-object v5

    invoke-virtual {v5, v4, p3}, Landroidx/appcompat/view/menu/w6;->w(Landroidx/appcompat/view/menu/y6;I)I

    move-result v5

    if-gez v5, :cond_b

    const-string p1, "Install apk error."

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/k50;->a(Ljava/lang/String;)Landroidx/appcompat/view/menu/k50;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/j50;->b(I)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-static {v2}, Landroidx/appcompat/view/menu/lr;->d(Ljava/io/File;)I

    :cond_a
    return-object p1

    :cond_b
    :try_start_6
    iget-object v5, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v4, v3, p3}, Landroidx/appcompat/view/menu/y6;->j(ZI)V

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/y6;->i()V

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v3, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    iget-object v5, v4, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    invoke-virtual {v3, v5}, Landroidx/appcompat/view/menu/ke;->r(Landroidx/appcompat/view/menu/u6;)V

    iget-object v3, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    iget-object v5, v4, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    invoke-virtual {v3, v5}, Landroidx/appcompat/view/menu/ke;->b(Landroidx/appcompat/view/menu/u6;)V

    iget-object v3, p0, Landroidx/appcompat/view/menu/x6;->l:Landroidx/appcompat/view/menu/pt0;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/pt0;->j(Ljava/lang/String;)V

    iget-object p1, v4, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object p1, p1, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/view/menu/x6;->D2(Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/j50;->b(I)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {v2}, Landroidx/appcompat/view/menu/lr;->d(Ljava/io/File;)I

    :cond_c
    return-object v0

    :catchall_2
    move-exception p1

    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_4
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v2, :cond_d

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/j50;->b(I)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {v2}, Landroidx/appcompat/view/menu/lr;->d(Ljava/io/File;)I

    :cond_d
    return-object v0

    :catchall_3
    move-exception p1

    if-eqz v2, :cond_e

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/j50;->b(I)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-static {v2}, Landroidx/appcompat/view/menu/lr;->d(Ljava/io/File;)I

    :cond_e
    throw p1
.end method

.method public D(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    invoke-virtual {v0, p4}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/x6;->G2(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/x6;->u2(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public D2(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/bh0;

    invoke-interface {v1, p1, p2}, Landroidx/appcompat/view/menu/bh0;->k(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public E2(Ljava/lang/String;ZI)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/bh0;

    invoke-interface {v1, p1, p2, p3}, Landroidx/appcompat/view/menu/bh0;->h(Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public F1(Ljava/lang/String;I)Z
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/y6;

    if-nez p1, :cond_1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/y6;->a(I)Z

    move-result p1

    monitor-exit v0

    return p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final F2(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
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

.method public final G2(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4}, Landroidx/appcompat/view/menu/x6;->x2(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p1}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/ke;->j(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

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

.method public final H2(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 7

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    move-object v2, p1

    if-eqz v0, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4}, Landroidx/appcompat/view/menu/x6;->g1(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p3}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object p2, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/y6;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object v1, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    iget-object v5, v0, Landroidx/appcompat/view/menu/u6;->p:Ljava/util/ArrayList;

    move-object v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/view/menu/ke;->q(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    invoke-virtual {v0, v2, p2, p3, p4}, Landroidx/appcompat/view/menu/ke;->p(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public I0(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/x6;->B2(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final I2(I)I
    .locals 1

    const/high16 v0, 0xc0000

    or-int/2addr p1, v0

    return p1
.end method

.method public O0(Landroid/content/Intent;II)Ljava/util/List;
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroidx/appcompat/view/menu/x6;->H2(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p2

    const-string p3, "android.support.customtabs.action.CustomTabsService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    new-instance p1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p1}, Landroid/content/pm/ResolveInfo;-><init>()V

    new-instance p3, Landroid/content/pm/ServiceInfo;

    invoke-direct {p3}, Landroid/content/pm/ServiceInfo;-><init>()V

    iput-object p3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v0, "com.android.chrome"

    iput-object v0, p3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.snake.helper.FakeCustomTabsService"

    iput-object v0, p3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 p3, 0x0

    invoke-interface {p2, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-object p2
.end method

.method public U0(Ljava/lang/String;Landroidx/appcompat/view/menu/j50;I)Landroidx/appcompat/view/menu/k50;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/x6;->C2(Ljava/lang/String;Landroidx/appcompat/view/menu/j50;I)Landroidx/appcompat/view/menu/k50;

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

.method public U1(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 4

    sget-object v0, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    invoke-virtual {v0, p3}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/ke;->f(Landroid/content/ComponentName;)Landroidx/appcompat/view/menu/u6$b;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/y6;

    if-nez p1, :cond_1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/y6;->e(I)Landroidx/appcompat/view/menu/z6;

    move-result-object p1

    invoke-static {v2, p2, p1, p3}, Landroidx/appcompat/view/menu/zg0;->c(Landroidx/appcompat/view/menu/u6$b;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_2
    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public W(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 2

    sget-object v0, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    invoke-virtual {v0, p4}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1, p3, p2, p4}, Landroidx/appcompat/view/menu/x6;->H2(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-lt p2, p3, :cond_1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public W0(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .locals 8

    sget-object v0, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    invoke-virtual {v0, p4}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v1, p2, p4}, Landroidx/appcompat/view/menu/x6;->U1(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance p3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p3}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object p2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1

    :cond_3
    iget-object v1, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter v1

    if-eqz v0, :cond_7

    :try_start_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/y6;

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object v2, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    iget-object v6, v0, Landroidx/appcompat/view/menu/u6;->m:Ljava/util/ArrayList;

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/view/menu/ke;->k(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    if-nez p1, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    monitor-exit v1

    return-object p1

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/y6;

    if-eqz v2, :cond_8

    iget-object v2, v2, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object v3, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    iget-object v6, v2, Landroidx/appcompat/view/menu/u6;->m:Ljava/util/ArrayList;

    move-object v2, v3

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/view/menu/ke;->k(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    monitor-exit v1

    return-object v2

    :cond_9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public X1(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    .locals 4

    sget-object v0, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    invoke-virtual {v0, p3}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/ke;->g(Landroid/content/ComponentName;)Landroidx/appcompat/view/menu/u6$i;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/y6;

    if-nez p1, :cond_1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/y6;->e(I)Landroidx/appcompat/view/menu/z6;

    move-result-object p1

    invoke-static {v2, p2, p1, p3}, Landroidx/appcompat/view/menu/zg0;->i(Landroidx/appcompat/view/menu/u6$i;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_2
    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a2(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/y6;

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/a7;->n(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/y6;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {}, Landroidx/appcompat/view/menu/w6;->h()Landroidx/appcompat/view/menu/w6;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, v2, v7, v6}, Landroidx/appcompat/view/menu/w6;->b1(Landroidx/appcompat/view/menu/y6;ZI)I

    move-result v5

    if-gez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, p1, v7, v4}, Landroidx/appcompat/view/menu/x6;->E2(Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroidx/appcompat/view/menu/x6;->l:Landroidx/appcompat/view/menu/pt0;

    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/pt0;->g(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    iget-object v2, v2, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/ke;->r(Landroidx/appcompat/view/menu/u6;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public b0(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;
    .locals 7

    sget-object v0, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    invoke-virtual {v0, p4}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_1
    move-object v2, p1

    if-eqz v0, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0, p2, p4}, Landroidx/appcompat/view/menu/x6;->o2(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance p3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p3}, Landroid/content/pm/ResolveInfo;-><init>()V

    iput-object p2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1

    :cond_3
    iget-object p1, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/y6;

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object v1, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    iget-object v5, v0, Landroidx/appcompat/view/menu/u6;->n:Ljava/util/ArrayList;

    move-object v3, p3

    move v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/view/menu/ke;->o(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    invoke-virtual {v0, v2, p3, p2, p4}, Landroidx/appcompat/view/menu/ke;->n(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public c0(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    invoke-virtual {v0, p3}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->r()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/x6;->I2(I)I

    move-result p2

    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/y6;

    if-eqz p1, :cond_2

    iget-object v1, p1, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/y6;->e(I)Landroidx/appcompat/view/menu/z6;

    move-result-object p1

    invoke-static {v1, p2, p1, p3}, Landroidx/appcompat/view/menu/zg0;->d(Landroidx/appcompat/view/menu/u6;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f2(I)I
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/a7;->c(I)Landroidx/appcompat/view/menu/yj0;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Landroidx/appcompat/view/menu/yj0;->r:I

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public g(I)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/y6;

    iget-object v2, v2, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object v2, v2, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Landroidx/appcompat/view/menu/x6;->t1(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g1(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    .locals 4

    sget-object v0, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    invoke-virtual {v0, p3}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/ke;->i(Landroid/content/ComponentName;)Landroidx/appcompat/view/menu/u6$k;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/y6;

    if-nez p1, :cond_1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/y6;->e(I)Landroidx/appcompat/view/menu/z6;

    move-result-object p1

    invoke-static {v2, p2, p1, p3}, Landroidx/appcompat/view/menu/zg0;->j(Landroidx/appcompat/view/menu/u6$k;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_2
    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g2(Ljava/lang/String;III)Ljava/util/List;
    .locals 1

    sget-object p2, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    invoke-virtual {p2, p4}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    invoke-virtual {v0, p1, p3, p4}, Landroidx/appcompat/view/menu/ke;->m(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p2
.end method

.method public j()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->l:Landroidx/appcompat/view/menu/pt0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt0;->i()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

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

    check-cast v1, Landroidx/appcompat/view/menu/y6;

    iget-object v2, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    iget-object v3, v1, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/ke;->r(Landroidx/appcompat/view/menu/u6;)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    iget-object v1, v1, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/ke;->b(Landroidx/appcompat/view/menu/u6;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(Landroidx/appcompat/view/menu/bh0;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public l1(II)[Ljava/lang/String;
    .locals 6

    sget-object v0, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/y6;

    iget-object v5, v4, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object v5, v5, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-virtual {v4, p2}, Landroidx/appcompat/view/menu/y6;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v5}, Landroidx/appcompat/view/menu/x6;->y2(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/a7;->c(I)Landroidx/appcompat/view/menu/yj0;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/yj0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-array p1, v1, [Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public n(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    invoke-virtual {v0, p4}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p3, p2, p4}, Landroidx/appcompat/view/menu/x6;->G2(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/x6;->u2(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public n1(II)Ljava/util/List;
    .locals 4

    sget-object v0, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/y6;

    iget-object v3, v3, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    iget-object v3, v3, Landroidx/appcompat/view/menu/u6;->y:Ljava/lang/String;

    invoke-virtual {p0, v3, p1, p2}, Landroidx/appcompat/view/menu/x6;->z1(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public o2(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 4

    sget-object v0, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    invoke-virtual {v0, p3}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/ke;->h(Landroid/content/ComponentName;)Landroidx/appcompat/view/menu/u6$b;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/y6;

    if-nez p1, :cond_1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/y6;->e(I)Landroidx/appcompat/view/menu/z6;

    move-result-object p1

    invoke-static {v2, p2, p1, p3}, Landroidx/appcompat/view/menu/zg0;->c(Landroidx/appcompat/view/menu/u6$b;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_2
    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q1(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/a7;->o(Ljava/lang/String;I)V

    return-void
.end method

.method public t1(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/y6;

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_3
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/x6;->F1(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_1
    :try_start_5
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/y6;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroidx/appcompat/view/menu/a7;->o(Ljava/lang/String;I)V

    if-eqz v4, :cond_3

    iget-object v3, p0, Landroidx/appcompat/view/menu/x6;->l:Landroidx/appcompat/view/menu/pt0;

    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/pt0;->g(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    iget-object v2, v2, Landroidx/appcompat/view/menu/y6;->m:Landroidx/appcompat/view/menu/u6;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/ke;->r(Landroidx/appcompat/view/menu/u6;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p2}, Landroidx/appcompat/view/menu/y6;->f(I)V

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/y6;->i()V

    :goto_1
    invoke-virtual {p0, p1, v4, p2}, Landroidx/appcompat/view/menu/x6;->E2(Ljava/lang/String;ZI)V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :goto_2
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1

    :goto_3
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p1
.end method

.method public final u2(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 5

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_0
    if-le v0, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget v3, v0, Landroid/content/pm/ResolveInfo;->priority:I

    iget v4, v2, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v3, v4, :cond_1

    iget v3, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    iget v4, v2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-ne v3, v4, :cond_1

    iget-boolean v0, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v2, v2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v0, v2, :cond_2

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public v0(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/x6;->F1(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/a7;->e()Landroidx/appcompat/view/menu/a7;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/a7;->o(Ljava/lang/String;I)V

    return-void
.end method

.method public final x2(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 4

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/x6;->I2(I)I

    move-result p2

    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/ke;->f(Landroid/content/ComponentName;)Landroidx/appcompat/view/menu/u6$b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Landroidx/appcompat/view/menu/x6;->l:Landroidx/appcompat/view/menu/pt0;

    iget-object v3, v3, Landroidx/appcompat/view/menu/pt0;->a:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/y6;

    if-nez p1, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/y6;->e(I)Landroidx/appcompat/view/menu/z6;

    move-result-object p1

    invoke-static {v1, p2, p1, p3}, Landroidx/appcompat/view/menu/zg0;->c(Landroidx/appcompat/view/menu/u6$b;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_1
    monitor-exit v0

    return-object v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public y2(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/y6;

    if-eqz p1, :cond_0

    iget p1, p1, Landroidx/appcompat/view/menu/y6;->n:I

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public z0(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    invoke-virtual {v0, p3}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->m:Landroidx/appcompat/view/menu/ke;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/ke;->l(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    return-object p1
.end method

.method public z1(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 3

    sget-object v0, Landroidx/appcompat/view/menu/x6;->r:Landroidx/appcompat/view/menu/f7;

    invoke-virtual {v0, p3}, Landroidx/appcompat/view/menu/f7;->H1(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->r()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/x6;->I2(I)I

    move-result p2

    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/y6;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/y6;->e(I)Landroidx/appcompat/view/menu/z6;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Landroidx/appcompat/view/menu/zg0;->g(Landroidx/appcompat/view/menu/y6;ILandroidx/appcompat/view/menu/z6;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public z2(Ljava/lang/String;)Landroidx/appcompat/view/menu/y6;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/x6;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/y6;

    return-object p1
.end method
