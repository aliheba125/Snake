.class public abstract Landroidx/appcompat/view/menu/j1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/j1$h;,
        Landroidx/appcompat/view/menu/j1$g;,
        Landroidx/appcompat/view/menu/j1$b;,
        Landroidx/appcompat/view/menu/j1$a;,
        Landroidx/appcompat/view/menu/j1$c;,
        Landroidx/appcompat/view/menu/j1$d;,
        Landroidx/appcompat/view/menu/j1$f;,
        Landroidx/appcompat/view/menu/j1$e;
    }
.end annotation


# direct methods
.method public static a()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/j1$h;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/j1$h;-><init>()V

    const-string v2, "startActivity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/appcompat/view/menu/j1$g;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/j1$g;-><init>()V

    const-string v2, "startActivities"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/appcompat/view/menu/j1$b;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/j1$b;-><init>()V

    const-string v2, "activityResumed"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/appcompat/view/menu/j1$a;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/j1$a;-><init>()V

    const-string v2, "activityDestroyed"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/appcompat/view/menu/j1$c;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/j1$c;-><init>()V

    const-string v2, "finishActivity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/appcompat/view/menu/j1$d;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/j1$d;-><init>()V

    const-string v2, "getAppTasks"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/appcompat/view/menu/j1$f;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/j1$f;-><init>()V

    const-string v2, "getCallingPackage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/appcompat/view/menu/j1$e;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/j1$e;-><init>()V

    const-string v2, "getCallingActivity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
