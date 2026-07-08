.class public abstract Landroidx/appcompat/view/menu/d10;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/d10$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "meizu.security.IFlymePermissionService"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/d10;->a:Landroidx/appcompat/view/menu/go0;

    return-void
.end method
