.class public Landroidx/appcompat/view/menu/h90$f;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/h90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/h90;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/h90;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/h90$f;->a:Landroidx/appcompat/view/menu/h90;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90$f;->a:Landroidx/appcompat/view/menu/h90;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h90;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90$f;->a:Landroidx/appcompat/view/menu/h90;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h90;->a()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/h90$f;->a:Landroidx/appcompat/view/menu/h90;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h90;->dismiss()V

    return-void
.end method
