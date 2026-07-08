.class public abstract Landroidx/appcompat/view/menu/yt0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/my0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "NO_VALUE"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/yt0;->a:Landroidx/appcompat/view/menu/my0;

    return-void
.end method

.method public static final a(Landroidx/appcompat/view/menu/xt0;Landroidx/appcompat/view/menu/kh;ILandroidx/appcompat/view/menu/u8;)Landroidx/appcompat/view/menu/ss;
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/u8;->m:Landroidx/appcompat/view/menu/u8;

    if-ne p3, v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/ya;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/appcompat/view/menu/ya;-><init>(Landroidx/appcompat/view/menu/ss;Landroidx/appcompat/view/menu/kh;ILandroidx/appcompat/view/menu/u8;)V

    return-object v0
.end method
