.class public final Landroidx/appcompat/view/menu/qd1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Landroidx/appcompat/view/menu/ef;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ef;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/appcompat/view/menu/qd1;->b:Landroidx/appcompat/view/menu/ef;

    iput p2, p0, Landroidx/appcompat/view/menu/qd1;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/qd1;->a:I

    return v0
.end method

.method public final b()Landroidx/appcompat/view/menu/ef;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/qd1;->b:Landroidx/appcompat/view/menu/ef;

    return-object v0
.end method
