.class public Landroidx/appcompat/view/menu/xn$a;
.super Landroidx/emoji2/text/c$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/xn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/Reference;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    invoke-direct {p0}, Landroidx/emoji2/text/c$f;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/xn$a;->a:Ljava/lang/ref/Reference;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    invoke-super {p0}, Landroidx/emoji2/text/c$f;->b()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/xn$a;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/xn;->b(Landroid/widget/EditText;I)V

    return-void
.end method
