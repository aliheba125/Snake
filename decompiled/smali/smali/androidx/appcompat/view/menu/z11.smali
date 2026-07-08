.class public Landroidx/appcompat/view/menu/z11;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/view/menu/o4;

.field public final b:Landroid/util/SparseArray;

.field public final c:Landroidx/appcompat/view/menu/na0;

.field public final d:Landroidx/appcompat/view/menu/o4;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/o4;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/o4;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/z11;->a:Landroidx/appcompat/view/menu/o4;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/z11;->b:Landroid/util/SparseArray;

    new-instance v0, Landroidx/appcompat/view/menu/na0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/na0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/z11;->c:Landroidx/appcompat/view/menu/na0;

    new-instance v0, Landroidx/appcompat/view/menu/o4;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/o4;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/z11;->d:Landroidx/appcompat/view/menu/o4;

    return-void
.end method
