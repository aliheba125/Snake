.class public abstract Landroidx/appcompat/view/menu/dj0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/dj0$b;
    }
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/wp;

.field public static volatile b:Landroidx/appcompat/view/menu/wp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/dj0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/dj0$b;-><init>(Landroidx/appcompat/view/menu/dj0$a;)V

    sput-object v0, Landroidx/appcompat/view/menu/dj0;->a:Landroidx/appcompat/view/menu/wp;

    sput-object v0, Landroidx/appcompat/view/menu/dj0;->b:Landroidx/appcompat/view/menu/wp;

    return-void
.end method

.method public static a()Landroidx/appcompat/view/menu/wp;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/dj0;->b:Landroidx/appcompat/view/menu/wp;

    return-object v0
.end method
