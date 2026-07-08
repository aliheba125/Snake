.class public final Landroidx/appcompat/view/menu/b5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/b5$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Landroidx/appcompat/view/menu/xk0$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/appcompat/view/menu/xk0$a;->m:Landroidx/appcompat/view/menu/xk0$a;

    iput-object v0, p0, Landroidx/appcompat/view/menu/b5;->b:Landroidx/appcompat/view/menu/xk0$a;

    return-void
.end method

.method public static b()Landroidx/appcompat/view/menu/b5;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/b5;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/b5;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/xk0;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/b5$a;

    iget v1, p0, Landroidx/appcompat/view/menu/b5;->a:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/b5;->b:Landroidx/appcompat/view/menu/xk0$a;

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/b5$a;-><init>(ILandroidx/appcompat/view/menu/xk0$a;)V

    return-object v0
.end method

.method public c(I)Landroidx/appcompat/view/menu/b5;
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/b5;->a:I

    return-object p0
.end method
