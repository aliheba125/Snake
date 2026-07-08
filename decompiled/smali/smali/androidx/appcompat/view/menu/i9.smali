.class public Landroidx/appcompat/view/menu/i9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/appcompat/view/menu/fj0;

.field public b:Landroidx/appcompat/view/menu/fj0;

.field public c:Landroidx/appcompat/view/menu/fj0;

.field public d:[Landroidx/appcompat/view/menu/yv0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/hj0;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/hj0;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/i9;->a:Landroidx/appcompat/view/menu/fj0;

    new-instance v0, Landroidx/appcompat/view/menu/hj0;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/hj0;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/i9;->b:Landroidx/appcompat/view/menu/fj0;

    new-instance v0, Landroidx/appcompat/view/menu/hj0;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/hj0;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/i9;->c:Landroidx/appcompat/view/menu/fj0;

    const/16 v0, 0x20

    new-array v0, v0, [Landroidx/appcompat/view/menu/yv0;

    iput-object v0, p0, Landroidx/appcompat/view/menu/i9;->d:[Landroidx/appcompat/view/menu/yv0;

    return-void
.end method
