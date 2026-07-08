.class public Landroidx/appcompat/view/menu/st$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/st;->l(Landroid/content/Context;Landroidx/appcompat/view/menu/st$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroidx/appcompat/view/menu/st;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/st;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/st$a;->b:Landroidx/appcompat/view/menu/st;

    iput-object p2, p0, Landroidx/appcompat/view/menu/st$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/view/menu/st$a;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/st$a;->c()V

    return-void
.end method


# virtual methods
.method public b()Landroidx/appcompat/view/menu/st$b;
    .locals 8

    const-string v0, "FlutterLoader initTask"

    invoke-static {v0}, Landroidx/appcompat/view/menu/p11;->i(Ljava/lang/String;)Landroidx/appcompat/view/menu/p11;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/st$a;->b:Landroidx/appcompat/view/menu/st;

    iget-object v2, p0, Landroidx/appcompat/view/menu/st$a;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/st;->a(Landroidx/appcompat/view/menu/st;Landroid/content/Context;)Landroidx/appcompat/view/menu/dp0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/st$a;->b:Landroidx/appcompat/view/menu/st;

    invoke-static {v1}, Landroidx/appcompat/view/menu/st;->b(Landroidx/appcompat/view/menu/st;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterJNI;->loadLibrary()V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Landroidx/appcompat/view/menu/st$a;->b:Landroidx/appcompat/view/menu/st;

    invoke-static {v1}, Landroidx/appcompat/view/menu/st;->b(Landroidx/appcompat/view/menu/st;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterJNI;->updateRefreshRate()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/st$a;->b:Landroidx/appcompat/view/menu/st;

    invoke-static {v1}, Landroidx/appcompat/view/menu/st;->d(Landroidx/appcompat/view/menu/st;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/rt;

    invoke-direct {v2, p0}, Landroidx/appcompat/view/menu/rt;-><init>(Landroidx/appcompat/view/menu/st$a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v1, Landroidx/appcompat/view/menu/st$b;

    iget-object v2, p0, Landroidx/appcompat/view/menu/st$a;->a:Landroid/content/Context;

    invoke-static {v2}, Landroidx/appcompat/view/menu/uh0;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/st$a;->a:Landroid/content/Context;

    invoke-static {v3}, Landroidx/appcompat/view/menu/uh0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/view/menu/st$a;->a:Landroid/content/Context;

    invoke-static {v4}, Landroidx/appcompat/view/menu/uh0;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/appcompat/view/menu/st$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/view/menu/st$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "couldn\'t find \"libflutter.so\""

    const-string v3, "dlopen failed: library \"libflutter.so\" not found"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    throw v1

    :cond_2
    :goto_0
    const-string v2, "os.arch"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroidx/appcompat/view/menu/st$a;->b:Landroidx/appcompat/view/menu/st;

    invoke-static {v4}, Landroidx/appcompat/view/menu/st;->c(Landroidx/appcompat/view/menu/st;)Landroidx/appcompat/view/menu/gt;

    move-result-object v4

    iget-object v4, v4, Landroidx/appcompat/view/menu/gt;->f:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not load libflutter.so this is possibly because the application is running on an architecture that Flutter Android does not support (e.g. x86) see https://docs.flutter.dev/deployment/android#what-are-the-supported-target-architectures for more detail.\nApp is using cpu architecture: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", and the native libraries directory (with path "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") contains the following files: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/p11;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v1
.end method

.method public final synthetic c()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/st$a;->b:Landroidx/appcompat/view/menu/st;

    invoke-static {v0}, Landroidx/appcompat/view/menu/st;->b(Landroidx/appcompat/view/menu/st;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->prefetchDefaultFontManager()V

    return-void
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/st$a;->b()Landroidx/appcompat/view/menu/st$b;

    move-result-object v0

    return-object v0
.end method
