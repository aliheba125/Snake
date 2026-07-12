.class public final Landroidx/appcompat/view/menu/sp0$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/sp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/ob0;

.field public b:Z


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ob0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/sp0$b;->a:Landroidx/appcompat/view/menu/ob0;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/sp0$b;->b:Z

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/sp0$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 3
    iget-object v0, p1, Landroidx/appcompat/view/menu/sp0$b;->a:Landroidx/appcompat/view/menu/ob0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ob0;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ob0;

    iput-object v0, p0, Landroidx/appcompat/view/menu/sp0$b;->a:Landroidx/appcompat/view/menu/ob0;

    .line 4
    iget-boolean p1, p1, Landroidx/appcompat/view/menu/sp0$b;->b:Z

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/sp0$b;->b:Z

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/sp0;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/sp0;

    new-instance v1, Landroidx/appcompat/view/menu/sp0$b;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/sp0$b;-><init>(Landroidx/appcompat/view/menu/sp0$b;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/sp0;-><init>(Landroidx/appcompat/view/menu/sp0$b;Landroidx/appcompat/view/menu/sp0$a;)V

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/sp0$b;->a()Landroidx/appcompat/view/menu/sp0;

    move-result-object v0

    return-object v0
.end method
