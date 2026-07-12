.class public final Landroidx/appcompat/view/menu/pt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/pt$b;
    }
.end annotation


# static fields
.field public static d:Landroidx/appcompat/view/menu/pt;

.field public static e:Z


# instance fields
.field public a:Landroidx/appcompat/view/menu/st;

.field public b:Lio/flutter/embedding/engine/FlutterJNI$c;

.field public c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/st;Landroidx/appcompat/view/menu/qk;Lio/flutter/embedding/engine/FlutterJNI$c;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/pt;->a:Landroidx/appcompat/view/menu/st;

    iput-object p3, p0, Landroidx/appcompat/view/menu/pt;->b:Lio/flutter/embedding/engine/FlutterJNI$c;

    iput-object p4, p0, Landroidx/appcompat/view/menu/pt;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/st;Landroidx/appcompat/view/menu/qk;Lio/flutter/embedding/engine/FlutterJNI$c;Ljava/util/concurrent/ExecutorService;Landroidx/appcompat/view/menu/pt$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/pt;-><init>(Landroidx/appcompat/view/menu/st;Landroidx/appcompat/view/menu/qk;Lio/flutter/embedding/engine/FlutterJNI$c;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static e()Landroidx/appcompat/view/menu/pt;
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/appcompat/view/menu/pt;->e:Z

    sget-object v0, Landroidx/appcompat/view/menu/pt;->d:Landroidx/appcompat/view/menu/pt;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/pt$b;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/pt$b;-><init>()V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt$b;->a()Landroidx/appcompat/view/menu/pt;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/pt;->d:Landroidx/appcompat/view/menu/pt;

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/pt;->d:Landroidx/appcompat/view/menu/pt;

    return-object v0
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/qk;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pt;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public c()Landroidx/appcompat/view/menu/st;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pt;->a:Landroidx/appcompat/view/menu/st;

    return-object v0
.end method

.method public d()Lio/flutter/embedding/engine/FlutterJNI$c;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/pt;->b:Lio/flutter/embedding/engine/FlutterJNI$c;

    return-object v0
.end method
