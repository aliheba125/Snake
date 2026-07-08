.class public abstract Landroidx/appcompat/view/menu/fp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/my0;

.field public static final b:Landroidx/appcompat/view/menu/my0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/fp;->a:Landroidx/appcompat/view/menu/my0;

    new-instance v0, Landroidx/appcompat/view/menu/my0;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/my0;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/view/menu/fp;->b:Landroidx/appcompat/view/menu/my0;

    return-void
.end method

.method public static final synthetic a()Landroidx/appcompat/view/menu/my0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/fp;->b:Landroidx/appcompat/view/menu/my0;

    return-object v0
.end method
