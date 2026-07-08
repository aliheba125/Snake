.class public final Landroidx/appcompat/view/menu/a62;
.super Landroidx/appcompat/view/menu/q62;
.source "SourceFile"


# instance fields
.field public final synthetic n:Landroidx/appcompat/view/menu/s52;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/s52;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/a62;->n:Landroidx/appcompat/view/menu/s52;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/q62;-><init>(Landroidx/appcompat/view/menu/s52;Landroidx/appcompat/view/menu/o62;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/s52;Landroidx/appcompat/view/menu/y52;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/a62;-><init>(Landroidx/appcompat/view/menu/s52;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/w52;

    iget-object v1, p0, Landroidx/appcompat/view/menu/a62;->n:Landroidx/appcompat/view/menu/s52;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/w52;-><init>(Landroidx/appcompat/view/menu/s52;Landroidx/appcompat/view/menu/u52;)V

    return-object v0
.end method
