.class public final Landroidx/appcompat/view/menu/b70$a;
.super Landroidx/appcompat/view/menu/z60;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/b70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final q:Landroidx/appcompat/view/menu/b70;

.field public final r:Landroidx/appcompat/view/menu/b70$b;

.field public final s:Landroidx/appcompat/view/menu/kb;

.field public final t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/b70;Landroidx/appcompat/view/menu/b70$b;Landroidx/appcompat/view/menu/kb;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/z60;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/b70$a;->q:Landroidx/appcompat/view/menu/b70;

    iput-object p2, p0, Landroidx/appcompat/view/menu/b70$a;->r:Landroidx/appcompat/view/menu/b70$b;

    iput-object p3, p0, Landroidx/appcompat/view/menu/b70$a;->s:Landroidx/appcompat/view/menu/kb;

    iput-object p4, p0, Landroidx/appcompat/view/menu/b70$a;->t:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b70$a;->w(Ljava/lang/Throwable;)V

    sget-object p1, Landroidx/appcompat/view/menu/r31;->a:Landroidx/appcompat/view/menu/r31;

    return-object p1
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 3

    iget-object p1, p0, Landroidx/appcompat/view/menu/b70$a;->q:Landroidx/appcompat/view/menu/b70;

    iget-object v0, p0, Landroidx/appcompat/view/menu/b70$a;->r:Landroidx/appcompat/view/menu/b70$b;

    iget-object v1, p0, Landroidx/appcompat/view/menu/b70$a;->s:Landroidx/appcompat/view/menu/kb;

    iget-object v2, p0, Landroidx/appcompat/view/menu/b70$a;->t:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/b70;->F(Landroidx/appcompat/view/menu/b70;Landroidx/appcompat/view/menu/b70$b;Landroidx/appcompat/view/menu/kb;Ljava/lang/Object;)V

    return-void
.end method
