.class public Landroidx/appcompat/view/menu/z10;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroidx/appcompat/view/menu/z10;

.field public static final c:Landroidx/appcompat/view/menu/o21;

.field public static final d:Landroidx/appcompat/view/menu/o21;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/z10;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/z10;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/z10;->b:Landroidx/appcompat/view/menu/z10;

    new-instance v0, Landroidx/appcompat/view/menu/o21;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/o21;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/z10;->c:Landroidx/appcompat/view/menu/o21;

    new-instance v0, Landroidx/appcompat/view/menu/o21;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/o21;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/z10;->d:Landroidx/appcompat/view/menu/o21;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/z10;->a:Ljava/util/Map;

    return-void
.end method

.method public static d()Landroidx/appcompat/view/menu/z10;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/z10;->b:Landroidx/appcompat/view/menu/z10;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/z10;->d:Landroidx/appcompat/view/menu/o21;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/o21;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/snake/helper/Native;->awl(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/z10;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/z10;->c:Landroidx/appcompat/view/menu/o21;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/o21;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/z10;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroidx/appcompat/view/menu/lr;->h(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1, p2}, Lcom/snake/helper/Native;->aior(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 13

    const-string v0, "/sdcard/%s"

    const-string v1, "/storage/emulated/%d/%s"

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->q()I

    move-result v4

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->u()Landroidx/appcompat/view/menu/qv0;

    move-result-object v5

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result v6

    const/16 v7, 0x80

    invoke-virtual {v5, v7, v6}, Landroidx/appcompat/view/menu/qv0;->j(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    const-string v10, "/data/data/%s/lib"

    new-array v11, v9, [Ljava/lang/Object;

    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "/data/user/%d/%s/lib"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v12, v11, v9

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "/data/user_de/%d/%s/lib"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v12, v11, v9

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "/data/data/%s"

    new-array v11, v9, [Ljava/lang/Object;

    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "/data/user/%d/%s"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v12, v11, v9

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "/data/user_de/%d/%s"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->m()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->N2()I

    move-result p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/lv0;->n(I)Ljava/io/File;

    move-result-object p1

    const-string v5, "/sdcard"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "/storage/emulated/%d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "/sdcard/Pictures"

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p1, "/storage/emulated/%d/Pictures"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v8

    sget-object v5, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v5, p1, v9

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v8

    sget-object v5, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v5, p1, v9

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v8

    sget-object v5, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v5, p1, v9

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v8

    sget-object v5, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v5, p1, v9

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v8

    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v5, p1, v9

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v8

    sget-object v5, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v5, p1, v9

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v8

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v5, p1, v9

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v8

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v5, p1, v9

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v8

    sget-object v4, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v4, p1, v9

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v9, [Ljava/lang/Object;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v1, p1, v8

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v9, [Ljava/lang/Object;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v1, p1, v8

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v9, [Ljava/lang/Object;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v1, p1, v8

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v9, [Ljava/lang/Object;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v1, p1, v8

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v9, [Ljava/lang/Object;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v1, p1, v8

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v9, [Ljava/lang/Object;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v1, p1, v8

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v9, [Ljava/lang/Object;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v1, p1, v8

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v9, [Ljava/lang/Object;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v1, p1, v8

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-array p1, v9, [Ljava/lang/Object;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v1, p1, v8

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/yu0;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/z10;->e(Ljava/util/Map;)V

    :cond_2
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/z10;->f(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/z10;->d()Landroidx/appcompat/view/menu/z10;

    move-result-object v1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroidx/appcompat/view/menu/z10;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/z10;->d()Landroidx/appcompat/view/menu/z10;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/z10;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/snake/helper/Native;->eio()V

    return-void
.end method

.method public final e(Ljava/util/Map;)V
    .locals 2

    const-string v0, "/system/app/Superuser.apk"

    const-string v1, "/system/app/Superuser.apk-fake"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/sbin/su"

    const-string v1, "/sbin/su-fake"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/system/bin/su"

    const-string v1, "/system/bin/su-fake"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/system/xbin/su"

    const-string v1, "/system/xbin/su-fake"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/data/local/xbin/su"

    const-string v1, "/data/local/xbin/su-fake"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/data/local/bin/su"

    const-string v1, "/data/local/bin/su-fake"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/system/sd/xbin/su"

    const-string v1, "/system/sd/xbin/su-fake"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/system/bin/failsafe/su"

    const-string v1, "/system/bin/failsafe/su-fake"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/data/local/su"

    const-string v1, "/data/local/su-fake"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/su/bin/su"

    const-string v1, "/su/bin/su-fake"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final f(Ljava/util/Map;)V
    .locals 4

    invoke-static {}, Landroidx/appcompat/view/menu/jv0;->F2()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Landroidx/appcompat/view/menu/lv0;->r(I)Ljava/io/File;

    move-result-object v0

    const-string v3, "cmdline"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/self/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public g(Ljava/io/File;)Ljava/io/File;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/z10;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "/root/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    sget-object v0, Landroidx/appcompat/view/menu/z10;->d:Landroidx/appcompat/view/menu/o21;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/o21;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Landroidx/appcompat/view/menu/z10;->c:Landroidx/appcompat/view/menu/o21;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/o21;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/appcompat/view/menu/z10;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method
