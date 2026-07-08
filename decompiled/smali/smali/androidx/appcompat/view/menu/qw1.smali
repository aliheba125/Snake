.class public abstract Landroidx/appcompat/view/menu/qw1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/bp1;

.field public static volatile b:Landroidx/appcompat/view/menu/bp1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/ju1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/ju1;-><init>(Landroidx/appcompat/view/menu/gr1;)V

    sput-object v0, Landroidx/appcompat/view/menu/qw1;->a:Landroidx/appcompat/view/menu/bp1;

    sput-object v0, Landroidx/appcompat/view/menu/qw1;->b:Landroidx/appcompat/view/menu/bp1;

    return-void
.end method

.method public static a()Landroidx/appcompat/view/menu/bp1;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/qw1;->b:Landroidx/appcompat/view/menu/bp1;

    return-object v0
.end method
