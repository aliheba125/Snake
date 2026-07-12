.class public Landroidx/appcompat/view/menu/a50$a;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/a50;->d(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/appcompat/view/menu/a50$b;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/a50$b;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/appcompat/view/menu/a50$b;)V
    .locals 0

    iput-object p3, p0, Landroidx/appcompat/view/menu/a50$a;->a:Landroidx/appcompat/view/menu/a50$b;

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/a50$a;->a:Landroidx/appcompat/view/menu/a50$b;

    invoke-static {p1}, Landroidx/appcompat/view/menu/b50;->f(Ljava/lang/Object;)Landroidx/appcompat/view/menu/b50;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroidx/appcompat/view/menu/a50$b;->a(Landroidx/appcompat/view/menu/b50;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
