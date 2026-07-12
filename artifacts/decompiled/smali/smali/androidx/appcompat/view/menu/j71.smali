.class public abstract Landroidx/appcompat/view/menu/j71;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/j71$c;,
        Landroidx/appcompat/view/menu/j71$b;,
        Landroidx/appcompat/view/menu/j71$a;
    }
.end annotation


# direct methods
.method public static a()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/j71$c;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/j71$c;-><init>()V

    const-string v2, "setVpnPackageAuthorization"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/appcompat/view/menu/j71$b;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/j71$b;-><init>()V

    const-string v2, "prepareVpn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/appcompat/view/menu/j71$a;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/j71$a;-><init>()V

    const-string v2, "establishVpn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
