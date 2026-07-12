.class public Landroidx/appcompat/view/menu/ka$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ka;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/tc0;

.field public final b:Landroidx/appcompat/view/menu/mc0;

.field public final c:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/tc0;Landroidx/appcompat/view/menu/mc0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ka$d;->a:Landroidx/appcompat/view/menu/tc0;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ka$d;->b:Landroidx/appcompat/view/menu/mc0;

    iput p3, p0, Landroidx/appcompat/view/menu/ka$d;->c:I

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ka$d;->a:Landroidx/appcompat/view/menu/tc0;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/h90;->d()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
