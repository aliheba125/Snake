.class public Landroidx/appcompat/view/menu/a80$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/a80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/a80$c$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/KeyEvent;

.field public b:I

.field public c:Z

.field public final synthetic d:Landroidx/appcompat/view/menu/a80;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/a80;Landroid/view/KeyEvent;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/a80$c;->d:Landroidx/appcompat/view/menu/a80;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Landroidx/appcompat/view/menu/a80;->a:[Landroidx/appcompat/view/menu/a80$d;

    array-length p1, p1

    iput p1, p0, Landroidx/appcompat/view/menu/a80$c;->b:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/a80$c;->c:Z

    iput-object p2, p0, Landroidx/appcompat/view/menu/a80$c;->a:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/a80$d$a;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/a80$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/a80$c$a;-><init>(Landroidx/appcompat/view/menu/a80$c;Landroidx/appcompat/view/menu/a80$a;)V

    return-object v0
.end method
