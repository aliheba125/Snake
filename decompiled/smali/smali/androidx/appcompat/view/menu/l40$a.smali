.class public final Landroidx/appcompat/view/menu/l40$a;
.super Landroidx/appcompat/view/menu/k40$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/l40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/l40$a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/k40$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public varargs e([Ljava/lang/Object;)Landroidx/appcompat/view/menu/l40$a;
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/k40$a;->b([Ljava/lang/Object;)Landroidx/appcompat/view/menu/k40$b;

    return-object p0
.end method

.method public f()Landroidx/appcompat/view/menu/l40;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/k40$a;->c:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/k40$a;->a:[Ljava/lang/Object;

    iget v1, p0, Landroidx/appcompat/view/menu/k40$a;->b:I

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/l40;->n([Ljava/lang/Object;I)Landroidx/appcompat/view/menu/l40;

    move-result-object v0

    return-object v0
.end method
