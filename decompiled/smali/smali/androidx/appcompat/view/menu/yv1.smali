.class public final Landroidx/appcompat/view/menu/yv1;
.super Landroidx/appcompat/view/menu/ov1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ew1;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/view/menu/ov1;-><init>(Landroidx/appcompat/view/menu/ew1;Ljava/lang/String;Ljava/lang/Object;ZLandroidx/appcompat/view/menu/iw1;)V

    return-void
.end method


# virtual methods
.method public final synthetic h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
