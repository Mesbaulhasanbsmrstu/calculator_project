//
//  ViewController.swift
//  calculator_project
//
//  Created by M29 on 14/12/19.
//  Copyright © 2019 M29. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monitor: UITextField!
    var show = "0.0"
                   var n = "0"
                   var ans = 0.0
                   var t = 0.0
                   var op : String!
                   var result : String!
                   var temp = false
                   var Error = false
    override func viewDidLoad() {
        monitor.text = show
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func OnE(_ sender: Any) {
        if show == "0.0" || op == "eql"
                     {
                            show = "1"
                             n = "1"
                             op = "0"
                             ans = 0.0
                      
                         
                     }
                         else
                         {
                      
                             show  += "1"
                             n = n + "1"
                           
               }
                            monitor.text = show
    }
    @IBAction func TwO(_ sender: Any) {
           if show == "0.0" || op == "eql"
                         {
                               show = "2"
                                 n = "2"
                                 op = "0"
                                 ans = 0.0
                         }
                                else
                                {
                                     
                          show  += "2"
                                 n = n + "2"
                                }
                             monitor.text = show
       }

       @IBAction func Three(_ sender: Any) {
           if show == "0.0" || op == "eql"
                  {
                      show = "3"
                      n = "3"
                      op = "0"
                      ans = 0.0
                  }
                  else
                  {
                     
                   show  += "3"
                       n = n + "3"
                   }
                       monitor.text = show
       }
       
    
       @IBAction func FouR(_ sender: Any) {
           if show == "0.0" || op == "eql"
                              {
                                show = "4"
                                  n = "4"
                                  op = "0"
                                  ans = 0.0
                              }
                              else
                              {
                                    
                                   show  += "4"
                                   n = n + "4"
                               }
                                    monitor.text = show
       }
       
       @IBAction func FiVe(_ sender: Any) {
           if show == "0.0" || op == "eql"
                               {
                                   show = "5"
                                     n = "5"
                                     op = "0"
                                     ans = 0.0
                               }
                               else
                               {
                                    
                                     show  += "5"
                                      n = n + "5"
                                }
                                     monitor.text = show
       }
       
       @IBAction func SiX(_ sender: Any) {
           if show == "0.0" || op == "eql"
           {
            show = "6"
                   n = "6"
                   op = "0"
                   ans = 0.0
           }
           else
           {
                 
             show  += "6"
                    n = n + "6"
            }
                    monitor.text = show
       }
       
       
       @IBAction func SeVen(_ sender: Any) {
           if show == "0.0" || op == "eql"
           {
            show = "7"
                   n = "7"
                   op = "0"
                   ans = 0.0
           }
           else
           {
                 
             show += "7"
                    n = n + "7"
            }
                    monitor.text = show
       }
       
       @IBAction func EiGht(_ sender: Any) {
           if show == "0.0" || op == "eql"
                                   {
                                    show = "8"
                                           n = "8"
                                           op = "0"
                                           ans = 0.0
                                   }
                                   else
                                   {
                                         
                                     show  += "8"
                                            n = n + "8"
                                    }
                                            monitor.text = show
       }
       @IBAction func Nine(_ sender: Any) {
           if show == "0.0" || op == "eql"
           {
            show = "9"
                   n = "9"
                   op = "0"
                   ans = 0.0
           }
           else
           {
                 
             show  += "9"
                    n = n + "9"
            }
                    monitor.text = show
       }
       
       @IBAction func ZeRo(_ sender: Any) {
           if show == "0.0" || op == "eql"
                         {
                                 show = "0"
                                      op = "0"
                                      ans = 0.0
                  }
                         else
                         {
                        
                                   show  += "0"
                         }
                  if n == "0"
                    {
                                      n = "0"
                    }
                          else
                          {
                                        n = n + "0"
                          }
                  
                                 monitor.text = show
       }
       
       @IBAction func RooT(_ sender: Any) {
           if op == "+"
                                     {
                                        ans += Double(n)!
                                     }
                                     else if op == "-"
                                     {
                                         ans -= Double(n)!
                                     }
                                     else if op == "*"
                                     {
                                       
                                           
                                       
                                         ans *= Double(n)!
                                        
                                     }
                                     else if op == "/" && n != "0"
                                     {
                                       
                                         
                                            
                                      ans /= Double(n)!
                                      
                                      }
                                      else if op == "/" && n == "0"
                                      {  Error = true
                                     
                               }   else if op != "eql"
                                
                                       {
                                          ans += Double(n)!
                                       }
                            if Error == false
                            {
                              ans = sqrt(ans)
                              show = String(ans)
                                op = "eql"
                                n = "0"
                               monitor.text = show
                              
                              
                            }
                            else    {
                                 monitor.text = "divided by zero is infinity"
                                                    show = "0.0"
                                                                n = "0"
                                                                ans = 0.0
                              op = "eq1"
                              Error = false
                  }
       }
       
       @IBAction func CubeRoot(_ sender: Any) {
           if op == "+"
                                         {
                                             ans += Double(n)!
                                         }
                                         else if op == "-"
                                         {
                                             ans -= Double(n)!
                                         }
                                         else if op == "*"
                                         {
                                           
                                               
                                           
                                             ans *= Double(n)!
                                            
                                         }
                                         else if op == "/" && n != "0"
                                         {
                                           
                                             
                                                
                                             ans /= Double(n)!
                                          
                                          }
                                          else if op == "/" && n == "0"
                                          {
                                          Error = true
                                        
                                           }
                                          else if op != "eql"
                                    
                                           {
                                               ans += Double(n)!
                                           }
                                  if Error == false
                                          {
                                            ans = cbrt(ans)
                                            show = String(ans)
                                              op = "eql"
                                              n = "0"
                                             monitor.text = show
                                            
                                            
                                          }
                                          else    {
                                               monitor.text = "divided by zero is infinity"
                                                                  show = "0.0"
                                                                              n = "0"
                                                                              ans = 0.0
                                      op = "eq1"
                                      Error = false
                                      
                                }
       }
       
       @IBAction func Parcentage(_ sender: Any) {
           if op == "+"
                              {
                                  ans += Double(n)!
                              }
                              else if op == "-"
                              {
                                  ans -= Double(n)!
                              }
                              else if op == "*"
                              {
                                
                                    
                                
                                  ans *= Double(n)!
                                 
                              }
                              else if op == "/" && n != "0"
                              {
                                
                                  
                                     
                                  ans /= Double(n)!
                               
                               }
                               else if op == "/" && n == "0"
                               {
                                 Error = true
                             
                                }
                               else if op != "eql"
                         
                                {
                                    ans += Double(n)!
                                }
                 if Error == false
                               {
                                 ans = ans/100
                                 show = String(ans)
                                   op = "eql"
                                   n = "0"
                                  monitor.text = show
                                 
                                 
                               }
                               else    {
                                    monitor.text = "divided by zero is infinity"
                                                       show = "0.0"
                                                                   n = "0"
                                                                   ans = 0.0
                  op = "eq1"
                  Error = false
                     }
       }
       
      
       @IBAction func LoG(_ sender: Any) {
           if op == "+"
                                     {
                                         ans += Double(n)!
                                     }
                                     else if op == "-"
                                     {
                                        ans -= Double(n)!
                                     }
                                     else if op == "*"
                                     {
                                       
                                           
                                       
                                      ans *= Double(n)!
                                        
                                     }
                                     else if op == "/" && n != "0"
                                     {
                                       
                                         
                                            
                                         ans /= Double(n)!
                                      
                                      }
                                      else if op == "/" && n == "0"
                                      {
                                         Error = true
                                       
                                    
                                       }
                                      else if op != "eql"
                                
                                       {
                                          ans += Double(n)!
                                       }
                  if Error == true
                  {
                        monitor.text = "divided by zero is infinity"
                      ans = 0.0
                                                    n = "0"
                                                    op = "eq1"
                      Error = false
                      
                  }
                  else {  ans = log(ans)
                                   show = String(ans)
                                   op = "eql"
                                   n = "0"
                                  monitor.text = show
                  }    }
       
      
       @IBAction func FacT(_ sender: Any) {
           if op == "+"
                              {
                                  ans += Double(n)!
                              }
                              else if op == "-"
                              {
                                  ans -= Double(n)!
                              }
                              else if op == "*"
                              {
                                
                                    
                                
                                 ans *= Double(n)!
                                 
                              }
                              else if op == "/" && n != "0"
                              {
                                
                                  
                                     
                                  ans /= Double(n)!
                               
                               }
                               else if op == "/" && n == "0"
                               {
                               Error = true
                              ans = 0
                                  n = "0"
                                  op = "0"
                             
                                }
                               else if op != "eql"
                         
                                {
                                   ans += Double(n)!
                                }
                  func factorial (m: Double) -> Double{
                      if m > 170

                      {
                          return 0
                      }
                      else  if m <= 0
                      {
                          return 1
                      }
                  
                      else
                      {
                          return m * factorial(m : m-1)
                      }
                  }
           if Error == true
           {
               monitor.text = "divided by zero is infinity"
               ans = 0.0
               op = "eq1"
               n = "0"
               Error = false
           }
                  
           else {    ans = factorial(m: (ans))
                          show = String(ans)
                          op = "eql"
                          n = "0"
                                
                          if ans == 0
                              {
                                monitor.text = "infinity"
                               }
                              else
                              {
                               monitor.text = show
                              }
           }
       }
       
       @IBAction func Square(_ sender: Any) {
           if op == "+"
                                           {
                                               ans += Double(n)!
                                           }
                                           else if op == "-"
                                           {
                                              ans -= Double(n)!
                                           }
                                           else if op == "*"
                                           {
                                             
                                                 
                                             
                                               ans *= Double(n)!
                                              
                                           }
                                           else if op == "/" && n != "0"
                                           {
                                             
                                               
                                                  
                                             ans /= Double(n)!
                                            
                                            }
                                            else if op == "/" && n == "0"
                                            {
                                         Error = true
                                          
                                             }
                                            else if op != "eql"
                                      
                                             {
                                                 ans += Double(n)!
                                             }
                 if Error == true
                 {
                     monitor.text = "divided by zero is infinity"
                     ans = 0.0
                     n = "0"
                     op = "eq1"
                     Error = false
                 }
                 else {     ans *= ans
                              show = String(ans)
                               op = "eql"
                               n = "0"
                             monitor.text = show
                 }
       }
       
       
       @IBAction func Add(_ sender: Any) {
           if op == "+"
                           {
                           ans += Double(n)!
                           }
                        else if op == "-"
                           {
                            ans -= Double(n)!
                            }
                        else if op == "*"
                           {
                            ans *= Double(n)!
                           }
                        else if op == "/"
                           {
                          
                                
                            
                            ans /= Double(n)!
                         
                            }
                        else
                            {
                           ans += Double(n)!
                            }
                      
                            show += "+"
                        
                            op = "+"
                            n = "0"
                            monitor.text = show
       }
       
       @IBAction func MinuS(_ sender: Any) {
           if op == "+"
                 {
                     ans += Double(n)!
                 }
                 else if op == "-"
                 {
                    ans -= Double(n)!
                 }
                 else if op == "*"
                 {
                    ans *= Double(n)!
                 }
                 else if op == "/"
                 {
                     
                                    
                                
                ans /= Double(n)!
                             
                 }
                 else
                 {
                  ans += Double(n)!
                 }
               
           op = "-"
                 n = "0"
                  show +=  "-"
           monitor.text = show
       }
       
     
       @IBAction func MultF(_ sender: Any) {
           if op == "+"
                                   {
                                      ans += Double(n)!
                                   }
                                   else if op == "-"
                                   {
                                       ans -= Double(n)!
                                   }
                                   else if op == "*"
                                   {
                                       ans *= Double(n)!
                                   }
                                   else if op == "/"
                                   {
                                    
                                      ans /= Double(n)!
                                     
                                   }
                                   else
                                   {
                                     ans += Double(n)!
                                   }
                                 
                             op = "*"
                          show +=  "*"
                                    n = "0"
                          monitor.text = show
       }
       
     
       
       @IBAction func DiV(_ sender: Any) {
           if op == "+"
                             {
                              ans += Double(n)!
                             }
                             else if op == "-"
                             {
                                ans -= Double(n)!
                             }
                             else if op == "*"
                             {
                                 ans *= Double(n)!
                             }
                             else if op == "/"
                             {
                                 ans /= Double(n)!
                             }
                             else
                             {
                                 ans += Double(n)!
                             }
                           
                              op = "/"
                      
                               n = "0"
                               show += "/"
                           monitor.text = show
       }
       
       @IBAction func PoInT(_ sender: Any) {
           if show == "0.0" || op == "eql"
                                      {
                                                  show = "0."
                                                  n = "0."
                                                  op = "0"
                                                  ans = 0.0
                                      }
                                      else
                                      {
                                            
                                                  show  += "."
                                                  n = n + "."
                               }
                                                monitor.text = show
       }
       
       
       @IBAction func EqUaL(_ sender: Any) {
           if op == "+"
                      {
                          ans += Double(n)!
                      }
                      else if op == "-"
                      {
                        ans -= Double(n)!
                      }
                      else if op == "*"
                      {
                        
                            
                        
                          ans *= Double(n)!
                         
                      }
                      else if op == "/" && n != "0"
                      {
                        
                          
                             
                    ans /= Double(n)!
                       
                       }
                       else if op == "/" && n == "0"
                       {
                  Error = true
                         
                     
                        }
                       else if op != "eql"
                 
                        {
                            ans += Double(n)!
                        }
           if Error == true{
               monitor.text = "divided by zero is infinity"
               ans = 0.0
               n = "0"
               op = "eq1"
            Error = false
              show = "0.0"
           }  else {
                       show = String(ans)
                       op = "eql"
                       n = "0"
                       monitor.text = show
           }
      
       }
       
       
       @IBAction func CleAr(_ sender: Any) {
           result = show
                                  show = "0.0"
                                  n = "0"
                                  ans = 0.0
                                 monitor.text = show
                                 temp = true
        op = "eq1"
       }
       
       
       @IBAction func RecoVer(_ sender: Any) {
           if temp == true
                   {
                   n = result
                  show = result
                    op = "eql"
                                          n = "0"
                                          monitor.text = show
                       
                   }
               
            }

}

